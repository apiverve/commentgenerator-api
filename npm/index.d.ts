declare module '@apiverve/commentgenerator' {
  export interface commentgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface commentgeneratorResponse {
    status: string;
    error: string | null;
    data: CommentGeneratorData;
    code?: number;
  }


  interface CommentGeneratorData {
      count:    number;
      mode:     string;
      tone:     string;
      comments: string[];
  }

  export default class commentgeneratorWrapper {
    constructor(options: commentgeneratorOptions);

    execute(callback: (error: any, data: commentgeneratorResponse | null) => void): Promise<commentgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: commentgeneratorResponse | null) => void): Promise<commentgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<commentgeneratorResponse>;
  }
}
