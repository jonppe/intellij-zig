// This is a generated file. Not intended for manual editing.
package org.ziglang.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZigForStatement extends PsiElement {

  @Nullable
  ZigAssignExpr getAssignExpr();

  @Nullable
  ZigBlockExpr getBlockExpr();

  @NotNull
  ZigForPrefix getForPrefix();

  @Nullable
  ZigStatement getStatement();

}
