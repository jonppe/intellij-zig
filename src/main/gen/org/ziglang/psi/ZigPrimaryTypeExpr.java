// This is a generated file. Not intended for manual editing.
package org.ziglang.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZigPrimaryTypeExpr extends PsiElement {

  @Nullable
  ZigBuiltinidentifier getBuiltinidentifier();

  @Nullable
  ZigFnCallArguments getFnCallArguments();

  @Nullable
  ZigStringliteral getStringliteral();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getInteger();

}