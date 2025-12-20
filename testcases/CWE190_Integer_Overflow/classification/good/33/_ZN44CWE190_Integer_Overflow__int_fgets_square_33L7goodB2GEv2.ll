@global_var_88510 = external constant [16 x i8]
@global_var_88520 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_57356:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_573d7.thread, label %dec_label_pc_573d7

dec_label_pc_573d7.thread:                        ; preds = %dec_label_pc_57356
  call void @printLine(ptr @global_var_88510)
  store i32 0, ptr %.reg2mem, align 4
  br label %dec_label_pc_573e9

dec_label_pc_573d7:                               ; preds = %dec_label_pc_57356
  %7 = call i32 @atoi(ptr nonnull %2)
  %8 = icmp eq i32 %7, -2147483648
  store i32 %7, ptr %.reg2mem, align 4
  br i1 %8, label %dec_label_pc_57412, label %dec_label_pc_573e9

dec_label_pc_573e9:                               ; preds = %dec_label_pc_573d7.thread, %dec_label_pc_573d7
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = sub i32 0, %.reload
  %10 = icmp slt i32 %9, 0
  %11 = icmp eq i1 %10, false
  %12 = select i1 %11, i32 %9, i32 %.reload
  %13 = icmp sgt i32 %12, 46339
  br i1 %13, label %dec_label_pc_57412, label %dec_label_pc_573fd

dec_label_pc_573fd:                               ; preds = %dec_label_pc_573e9
  %14 = mul i32 %.reload, %.reload
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_57421

dec_label_pc_57412:                               ; preds = %dec_label_pc_573e9, %dec_label_pc_573d7
  call void @printLine(ptr @global_var_88520)
  br label %dec_label_pc_57421

dec_label_pc_57421:                               ; preds = %dec_label_pc_57412, %dec_label_pc_573fd
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_57436, label %dec_label_pc_57431

dec_label_pc_57431:                               ; preds = %dec_label_pc_57421
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57436

dec_label_pc_57436:                               ; preds = %dec_label_pc_57431, %dec_label_pc_57421
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

