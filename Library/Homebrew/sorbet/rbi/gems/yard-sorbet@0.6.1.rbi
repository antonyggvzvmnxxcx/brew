# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `yard-sorbet` gem.
# Please instead update this file by running `bin/tapioca gem yard-sorbet`.

module YARDSorbet; end

module YARDSorbet::Directives
  class << self
    sig { params(docstring: String, directives: T::Array[String]).void }
    def add_directives(docstring, directives); end

    sig { params(docstring: T.nilable(String)).returns([YARD::Docstring, T::Array[String]]) }
    def extract_directives(docstring); end
  end
end

module YARDSorbet::Handlers; end

class YARDSorbet::Handlers::AbstractDSLHandler < ::YARD::Handlers::Ruby::Base
  sig { void }
  def process; end
end

YARDSorbet::Handlers::AbstractDSLHandler::CLASS_TAG_TEXT = T.let(T.unsafe(nil), String)
YARDSorbet::Handlers::AbstractDSLHandler::TAG_TEXT = T.let(T.unsafe(nil), String)

class YARDSorbet::Handlers::EnumsHandler < ::YARD::Handlers::Ruby::Base
  sig { void }
  def process; end

  private

  sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Boolean) }
  def const_assign_node?(node); end
end

class YARDSorbet::Handlers::IncludeHandler < ::YARD::Handlers::Ruby::Base
  sig { void }
  def process; end

  private

  sig { returns(YARD::CodeObjects::NamespaceObject) }
  def included_in; end
end

class YARDSorbet::Handlers::MixesInClassMethodsHandler < ::YARD::Handlers::Ruby::Base
  sig { void }
  def process; end

  class << self
    sig { params(code_obj: String).returns(T.nilable(String)) }
    def mixed_in_class_methods(code_obj); end
  end
end

class YARDSorbet::Handlers::SigHandler < ::YARD::Handlers::Ruby::Base
  sig { void }
  def process; end

  private

  sig { params(method_node: YARD::Parser::Ruby::AstNode, node: YARD::Parser::Ruby::AstNode, docstring: YARD::Docstring).void }
  def parse_params(method_node, node, docstring); end

  sig { params(node: YARD::Parser::Ruby::AstNode, docstring: YARD::Docstring).void }
  def parse_return(node, docstring); end

  sig { params(method_node: YARD::Parser::Ruby::AstNode, docstring: YARD::Docstring).void }
  def parse_sig(method_node, docstring); end
end

YARDSorbet::Handlers::SigHandler::ATTR_NODE_TYPES = T.let(T.unsafe(nil), Array)

module YARDSorbet::Handlers::StructClassHandler
  sig { void }
  def process; end

  private

  sig { params(object: YARD::CodeObjects::MethodObject, props: T::Array[YARDSorbet::TStructProp], docstring: YARD::Docstring, directives: T::Array[String]).void }
  def decorate_t_struct_init(object, props, docstring, directives); end

  sig { params(props: T::Array[YARDSorbet::TStructProp], class_ns: YARD::CodeObjects::ClassObject).void }
  def process_t_struct_props(props, class_ns); end

  sig { params(props: T::Array[YARDSorbet::TStructProp]).returns(T::Array[[String, T.nilable(String)]]) }
  def to_object_parameters(props); end
end

class YARDSorbet::Handlers::StructPropHandler < ::YARD::Handlers::Ruby::Base
  sig { void }
  def process; end

  private

  sig { params(object: YARD::CodeObjects::MethodObject, prop: YARDSorbet::TStructProp).void }
  def decorate_object(object, prop); end

  sig { returns(T.nilable(String)) }
  def default_value; end

  sig { params(name: String).returns(YARDSorbet::TStructProp) }
  def make_prop(name); end

  sig { params(object: YARD::CodeObjects::MethodObject, name: String).void }
  def register_attrs(object, name); end

  sig { params(prop: YARDSorbet::TStructProp).void }
  def update_state(prop); end
end

module YARDSorbet::NodeUtils
  class << self
    sig { params(node: YARD::Parser::Ruby::AstNode, _blk: T.proc.params(n: YARD::Parser::Ruby::AstNode).void).void }
    def bfs_traverse(node, &_blk); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T.any(YARD::Parser::Ruby::MethodCallNode, YARD::Parser::Ruby::MethodDefinitionNode)) }
    def get_method_node(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(YARD::Parser::Ruby::AstNode) }
    def sibling_node(node); end
  end
end

YARDSorbet::NodeUtils::ATTRIBUTE_METHODS = T.let(T.unsafe(nil), Array)
YARDSorbet::NodeUtils::SIGABLE_NODE = T.type_alias { T.any(YARD::Parser::Ruby::MethodCallNode, YARD::Parser::Ruby::MethodDefinitionNode) }
YARDSorbet::NodeUtils::SKIP_METHOD_CONTENTS = T.let(T.unsafe(nil), Array)

module YARDSorbet::SigToYARD
  class << self
    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert(node); end

    private

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(String) }
    def build_generic_type(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_aref(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_array(node); end

    sig { params(node: YARD::Parser::Ruby::MethodCallNode).returns(T::Array[String]) }
    def convert_call(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_collection(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_hash(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_list(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_node(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_node_type(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_ref(node); end

    sig { params(node: YARD::Parser::Ruby::MethodCallNode).returns(T::Array[String]) }
    def convert_t_method(node); end

    sig { params(node: YARD::Parser::Ruby::AstNode).returns(T::Array[String]) }
    def convert_unknown(node); end
  end
end

class YARDSorbet::TStructProp < ::T::Struct
  const :default, T.nilable(String)
  const :doc, String
  const :prop_name, String
  const :source, String
  const :types, T::Array[String]

  class << self
    def inherited(s); end
  end
end

module YARDSorbet::TagUtils
  class << self
    sig { params(docstring: YARD::Docstring, tag_name: String, name: T.nilable(String)).returns(T.nilable(YARD::Tags::Tag)) }
    def find_tag(docstring, tag_name, name); end

    sig { params(docstring: YARD::Docstring, tag_name: String, types: T.nilable(T::Array[String]), name: T.nilable(String), text: String).void }
    def upsert_tag(docstring, tag_name, types = T.unsafe(nil), name = T.unsafe(nil), text = T.unsafe(nil)); end
  end
end

YARDSorbet::VERSION = T.let(T.unsafe(nil), String)
