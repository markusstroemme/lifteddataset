@global_var_898c8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_898c0 = external constant [3 x i8]

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_5d5db:
  %0 = load ptr, ptr @global_var_b8080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_898c0)
  %2 = sext i32 %1 to i64
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_5d610:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %dec_label_pc_5d674, label %dec_label_pc_5d648

dec_label_pc_5d648:                               ; preds = %dec_label_pc_5d610
  %4 = sub i32 0, %2
  %5 = icmp slt i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = select i1 %6, i32 %4, i32 %2
  %8 = icmp sgt i32 %7, 46339
  br i1 %8, label %dec_label_pc_5d674, label %dec_label_pc_5d65c

dec_label_pc_5d65c:                               ; preds = %dec_label_pc_5d648
  %9 = mul i32 %2, %2
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_5d683

dec_label_pc_5d674:                               ; preds = %dec_label_pc_5d648, %dec_label_pc_5d610
  call void @printLine(ptr @global_var_898c8)
  br label %dec_label_pc_5d683

dec_label_pc_5d683:                               ; preds = %dec_label_pc_5d674, %dec_label_pc_5d65c
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_5d698, label %dec_label_pc_5d693

dec_label_pc_5d693:                               ; preds = %dec_label_pc_5d683
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5d698

dec_label_pc_5d698:                               ; preds = %dec_label_pc_5d693, %dec_label_pc_5d683
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

