@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_3c579:
  %0 = ptrtoint ptr %arg1 to i64
  store i8 2, ptr %arg1, align 1
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3c58f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-18 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 32, ptr %stack_var_-18, align 4
  %1 = bitcast ptr %stack_var_-18 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load i32, ptr %stack_var_-18, align 4
  %4 = mul i32 %3, 16777216
  %sext = add i32 %4, 16777216
  %5 = udiv i32 %sext, 16777216
  %6 = trunc i32 %5 to i8
  call void @printHexCharLine(i8 %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3c5e4, label %dec_label_pc_3c5df

dec_label_pc_3c5df:                               ; preds = %dec_label_pc_3c58f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c5e4

dec_label_pc_3c5e4:                               ; preds = %dec_label_pc_3c5df, %dec_label_pc_3c58f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

