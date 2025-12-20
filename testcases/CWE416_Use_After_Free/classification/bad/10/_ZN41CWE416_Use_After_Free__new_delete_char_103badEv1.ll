@global_var_4a95b = external constant [6 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2dfaf:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2e013, label %dec_label_pc_2dfcd

dec_label_pc_2dfcd:                               ; preds = %dec_label_pc_2dfaf
  %2 = call i64 @_Znwm(i64 1)
  %3 = inttoptr i64 %2 to ptr
  store i8 65, ptr %3, align 1
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_2dff8, label %dec_label_pc_2dfeb

dec_label_pc_2dfeb:                               ; preds = %dec_label_pc_2dfcd
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 1)
  br label %dec_label_pc_2dff8

dec_label_pc_2dff8:                               ; preds = %dec_label_pc_2dfeb, %dec_label_pc_2dfcd
  %.pr = load i32, ptr @global_var_630a8, align 4
  %7 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_2e013, label %dec_label_pc_2e002

dec_label_pc_2e002:                               ; preds = %dec_label_pc_2dff8
  %8 = load i8, ptr %3, align 1
  call void @printHexCharLine(i8 %8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2e013

dec_label_pc_2e013:                               ; preds = %dec_label_pc_2dfaf, %dec_label_pc_2e002, %dec_label_pc_2dff8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

