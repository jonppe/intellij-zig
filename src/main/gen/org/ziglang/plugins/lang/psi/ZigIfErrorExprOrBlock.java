// This is a generated file. Not intended for manual editing.
package org.ziglang.plugins.lang.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZigIfErrorExprOrBlock extends PsiElement {

  @Nullable
  ZigBlock getBlock();

  @NotNull
  ZigBlockExpr getBlockExpr();

  @NotNull
  List<ZigExpr> getExprList();

}