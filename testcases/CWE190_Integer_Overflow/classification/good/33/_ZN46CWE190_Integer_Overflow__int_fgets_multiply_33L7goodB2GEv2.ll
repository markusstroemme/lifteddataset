@global_var_87e58 = external constant [16 x i8]
@global_var_87e68 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5050f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_50590.thread, label %dec_label_pc_50590

dec_label_pc_50590.thread:                        ; preds = %dec_label_pc_5050f
  call void @printLine(ptr @global_var_87e58)
  br label %dec_label_pc_505cb

dec_label_pc_50590:                               ; preds = %dec_label_pc_5050f
  %7 = call i32 @atoi(ptr nonnull %2)
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %dec_label_pc_505cb, label %dec_label_pc_5059f

dec_label_pc_5059f:                               ; preds = %dec_label_pc_50590
  %9 = icmp sgt i32 %7, 1073741822
  br i1 %9, label %dec_label_pc_505bc, label %dec_label_pc_505a8

dec_label_pc_505a8:                               ; preds = %dec_label_pc_5059f
  %10 = mul i32 %7, 2
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_505cb

dec_label_pc_505bc:                               ; preds = %dec_label_pc_5059f
  call void @printLine(ptr @global_var_87e68)
  br label %dec_label_pc_505cb

dec_label_pc_505cb:                               ; preds = %dec_label_pc_50590.thread, %dec_label_pc_505bc, %dec_label_pc_505a8, %dec_label_pc_50590
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_505e0, label %dec_label_pc_505db

dec_label_pc_505db:                               ; preds = %dec_label_pc_505cb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_505e0

dec_label_pc_505e0:                               ; preds = %dec_label_pc_505db, %dec_label_pc_505cb
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

