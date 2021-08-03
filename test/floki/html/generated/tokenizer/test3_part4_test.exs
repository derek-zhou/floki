defmodule Floki.HTML.Generated.Tokenizer.Test3Part4Test do
  use ExUnit.Case, async: true

  # NOTE: This file was generated by "mix generate_tokenizer_tests test3.test".
  # html5lib-tests rev: e52ff68cc7113a6ef3687747fa82691079bf9cc5

  alias Floki.HTML.Tokenizer

  test "tokenize/1 <!DOCTYPE a PUBLIC\"a" do
    input = "<!DOCTYPE a PUBLIC\"a"
    output = [["DOCTYPE", "a", "a", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\"b" do
    input = "<!DOCTYPE a PUBLIC\"b"
    output = [["DOCTYPE", "a", "b", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\"y" do
    input = "<!DOCTYPE a PUBLIC\"y"
    output = [["DOCTYPE", "a", "y", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\"z" do
    input = "<!DOCTYPE a PUBLIC\"z"
    output = [["DOCTYPE", "a", "z", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\"{" do
    input = "<!DOCTYPE a PUBLIC\"{"
    output = [["DOCTYPE", "a", "{", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC#" do
    input = "<!DOCTYPE a PUBLIC#"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC&" do
    input = "<!DOCTYPE a PUBLIC&"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'" do
    input = "<!DOCTYPE a PUBLIC'"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC' " do
    input = "<!DOCTYPE a PUBLIC' "
    output = [["DOCTYPE", "a", " ", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'!" do
    input = "<!DOCTYPE a PUBLIC'!"
    output = [["DOCTYPE", "a", "!", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\"" do
    input = "<!DOCTYPE a PUBLIC'\""
    output = [["DOCTYPE", "a", "\"", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'&" do
    input = "<!DOCTYPE a PUBLIC'&"
    output = [["DOCTYPE", "a", "&", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''" do
    input = "<!DOCTYPE a PUBLIC''"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'' " do
    input = "<!DOCTYPE a PUBLIC'' "
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''!" do
    input = "<!DOCTYPE a PUBLIC''!"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\"" do
    input = "<!DOCTYPE a PUBLIC''\""
    output = [["DOCTYPE", "a", "", "", false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''#" do
    input = "<!DOCTYPE a PUBLIC''#"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''&" do
    input = "<!DOCTYPE a PUBLIC''&"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'''" do
    input = "<!DOCTYPE a PUBLIC'''"
    output = [["DOCTYPE", "a", "", "", false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'''' \\u0000" do
    input =
      <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 39, 39, 39,
        32, 0>>

    output = [["DOCTYPE", "a", "", "", true]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'''' x\\u0000" do
    input =
      <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 39, 39, 39,
        32, 120, 0>>

    output = [["DOCTYPE", "a", "", "", true]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''''\\u0000" do
    input =
      <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 39, 39, 39,
        0>>

    output = [["DOCTYPE", "a", "", "", true]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''''x\\u0000" do
    input =
      <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 39, 39, 39,
        120, 0>>

    output = [["DOCTYPE", "a", "", "", true]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''(" do
    input = "<!DOCTYPE a PUBLIC''("
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''-" do
    input = "<!DOCTYPE a PUBLIC''-"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''/" do
    input = "<!DOCTYPE a PUBLIC''/"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''0" do
    input = "<!DOCTYPE a PUBLIC''0"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''1" do
    input = "<!DOCTYPE a PUBLIC''1"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''9" do
    input = "<!DOCTYPE a PUBLIC''9"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''<" do
    input = "<!DOCTYPE a PUBLIC''<"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''=" do
    input = "<!DOCTYPE a PUBLIC''="
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''>" do
    input = "<!DOCTYPE a PUBLIC''>"
    output = [["DOCTYPE", "a", "", nil, true]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''?" do
    input = "<!DOCTYPE a PUBLIC''?"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''@" do
    input = "<!DOCTYPE a PUBLIC''@"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''A" do
    input = "<!DOCTYPE a PUBLIC''A"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''B" do
    input = "<!DOCTYPE a PUBLIC''B"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''Y" do
    input = "<!DOCTYPE a PUBLIC''Y"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''Z" do
    input = "<!DOCTYPE a PUBLIC''Z"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u0000" do
    input = <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 39, 0>>
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u0008" do
    input = "<!DOCTYPE a PUBLIC''\b"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u0009" do
    input = "<!DOCTYPE a PUBLIC''\t"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u000A" do
    input = "<!DOCTYPE a PUBLIC''\n"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u000B" do
    input = "<!DOCTYPE a PUBLIC''\v"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u000C" do
    input = "<!DOCTYPE a PUBLIC''\f"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u000D" do
    input = "<!DOCTYPE a PUBLIC''\r"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\u001F" do
    input = <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 39, 31>>
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''\\uDBC0\\uDC00" do
    input = "<!DOCTYPE a PUBLIC''􀀀"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''`" do
    input = "<!DOCTYPE a PUBLIC''`"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''a" do
    input = "<!DOCTYPE a PUBLIC''a"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''b" do
    input = "<!DOCTYPE a PUBLIC''b"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''y" do
    input = "<!DOCTYPE a PUBLIC''y"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''z" do
    input = "<!DOCTYPE a PUBLIC''z"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC''{" do
    input = "<!DOCTYPE a PUBLIC''{"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'(" do
    input = "<!DOCTYPE a PUBLIC'("
    output = [["DOCTYPE", "a", "(", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'-" do
    input = "<!DOCTYPE a PUBLIC'-"
    output = [["DOCTYPE", "a", "-", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'/" do
    input = "<!DOCTYPE a PUBLIC'/"
    output = [["DOCTYPE", "a", "/", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'0" do
    input = "<!DOCTYPE a PUBLIC'0"
    output = [["DOCTYPE", "a", "0", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'1" do
    input = "<!DOCTYPE a PUBLIC'1"
    output = [["DOCTYPE", "a", "1", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'9" do
    input = "<!DOCTYPE a PUBLIC'9"
    output = [["DOCTYPE", "a", "9", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'<" do
    input = "<!DOCTYPE a PUBLIC'<"
    output = [["DOCTYPE", "a", "<", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'=" do
    input = "<!DOCTYPE a PUBLIC'="
    output = [["DOCTYPE", "a", "=", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'>" do
    input = "<!DOCTYPE a PUBLIC'>"
    output = [["DOCTYPE", "a", "", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'?" do
    input = "<!DOCTYPE a PUBLIC'?"
    output = [["DOCTYPE", "a", "?", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'@" do
    input = "<!DOCTYPE a PUBLIC'@"
    output = [["DOCTYPE", "a", "@", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'A" do
    input = "<!DOCTYPE a PUBLIC'A"
    output = [["DOCTYPE", "a", "A", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'B" do
    input = "<!DOCTYPE a PUBLIC'B"
    output = [["DOCTYPE", "a", "B", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'Y" do
    input = "<!DOCTYPE a PUBLIC'Y"
    output = [["DOCTYPE", "a", "Y", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'Z" do
    input = "<!DOCTYPE a PUBLIC'Z"
    output = [["DOCTYPE", "a", "Z", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\\u0000" do
    input = <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 39, 0>>
    output = [["DOCTYPE", "a", "�", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\\u0009" do
    input = "<!DOCTYPE a PUBLIC'\t"
    output = [["DOCTYPE", "a", "\t", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\\u000A" do
    input = "<!DOCTYPE a PUBLIC'\n"
    output = [["DOCTYPE", "a", "\n", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\\u000B" do
    input = "<!DOCTYPE a PUBLIC'\v"
    output = [["DOCTYPE", "a", "\v", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\\u000C" do
    input = "<!DOCTYPE a PUBLIC'\f"
    output = [["DOCTYPE", "a", "\f", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'\\uDBC0\\uDC00" do
    input = "<!DOCTYPE a PUBLIC'􀀀"
    output = [["DOCTYPE", "a", "􀀀", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'`" do
    input = "<!DOCTYPE a PUBLIC'`"
    output = [["DOCTYPE", "a", "`", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'a" do
    input = "<!DOCTYPE a PUBLIC'a"
    output = [["DOCTYPE", "a", "a", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'b" do
    input = "<!DOCTYPE a PUBLIC'b"
    output = [["DOCTYPE", "a", "b", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'y" do
    input = "<!DOCTYPE a PUBLIC'y"
    output = [["DOCTYPE", "a", "y", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'z" do
    input = "<!DOCTYPE a PUBLIC'z"
    output = [["DOCTYPE", "a", "z", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC'{" do
    input = "<!DOCTYPE a PUBLIC'{"
    output = [["DOCTYPE", "a", "{", nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC(" do
    input = "<!DOCTYPE a PUBLIC("
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC-" do
    input = "<!DOCTYPE a PUBLIC-"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC/" do
    input = "<!DOCTYPE a PUBLIC/"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC0" do
    input = "<!DOCTYPE a PUBLIC0"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC1" do
    input = "<!DOCTYPE a PUBLIC1"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC9" do
    input = "<!DOCTYPE a PUBLIC9"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC<" do
    input = "<!DOCTYPE a PUBLIC<"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC=" do
    input = "<!DOCTYPE a PUBLIC="
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC>" do
    input = "<!DOCTYPE a PUBLIC>"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC?" do
    input = "<!DOCTYPE a PUBLIC?"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC@" do
    input = "<!DOCTYPE a PUBLIC@"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLICA" do
    input = "<!DOCTYPE a PUBLICA"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLICB" do
    input = "<!DOCTYPE a PUBLICB"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLICY" do
    input = "<!DOCTYPE a PUBLICY"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLICZ" do
    input = "<!DOCTYPE a PUBLICZ"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\\u0000" do
    input = <<60, 33, 68, 79, 67, 84, 89, 80, 69, 32, 97, 32, 80, 85, 66, 76, 73, 67, 0>>
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\\u0008" do
    input = "<!DOCTYPE a PUBLIC\b"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\\u0009" do
    input = "<!DOCTYPE a PUBLIC\t"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\\u000A" do
    input = "<!DOCTYPE a PUBLIC\n"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end

  test "tokenize/1 <!DOCTYPE a PUBLIC\\u000B" do
    input = "<!DOCTYPE a PUBLIC\v"
    output = [["DOCTYPE", "a", nil, nil, false]]

    result =
      input
      |> Tokenizer.tokenize()
      |> TokenizerTestLoader.tokenization_result()

    assert result.tokens == output
  end
end