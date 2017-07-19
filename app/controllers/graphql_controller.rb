class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]

    render json: VayneSchema.execute(query, variables: variables, context: {})
  end

  private

  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end
end
