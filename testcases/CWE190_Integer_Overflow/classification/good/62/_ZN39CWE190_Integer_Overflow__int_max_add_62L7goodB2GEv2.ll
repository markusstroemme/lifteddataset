@global_var_8b258 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_696dd:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_6972a, label %dec_label_pc_69715

dec_label_pc_69715:                               ; preds = %dec_label_pc_696dd
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_69739

dec_label_pc_6972a:                               ; preds = %dec_label_pc_696dd
  call void @printLine(ptr @global_var_8b258)
  br label %dec_label_pc_69739

dec_label_pc_69739:                               ; preds = %dec_label_pc_6972a, %dec_label_pc_69715
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_6974e, label %dec_label_pc_69749

dec_label_pc_69749:                               ; preds = %dec_label_pc_69739
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6974e

dec_label_pc_6974e:                               ; preds = %dec_label_pc_69749, %dec_label_pc_69739
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_69797:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 2147483647, ptr %arg1, align 4
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

