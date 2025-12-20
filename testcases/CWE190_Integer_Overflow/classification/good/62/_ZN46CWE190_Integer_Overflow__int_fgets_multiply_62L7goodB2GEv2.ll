@global_var_87ee8 = external constant [54 x i8]
@global_var_87f1e = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50936:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_50998, label %dec_label_pc_5096b

dec_label_pc_5096b:                               ; preds = %dec_label_pc_50936
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_50989, label %dec_label_pc_50975

dec_label_pc_50975:                               ; preds = %dec_label_pc_5096b
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_50998

dec_label_pc_50989:                               ; preds = %dec_label_pc_5096b
  call void @printLine(ptr @global_var_87ee8)
  br label %dec_label_pc_50998

dec_label_pc_50998:                               ; preds = %dec_label_pc_50989, %dec_label_pc_50975, %dec_label_pc_50936
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_509ad, label %dec_label_pc_509a8

dec_label_pc_509a8:                               ; preds = %dec_label_pc_50998
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_509ad

dec_label_pc_509ad:                               ; preds = %dec_label_pc_509a8, %dec_label_pc_50998
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_50a6d:
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
  br i1 %6, label %dec_label_pc_50ad7, label %dec_label_pc_50ac3

dec_label_pc_50ac3:                               ; preds = %dec_label_pc_50a6d
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %arg1, align 4
  br label %dec_label_pc_50ae6

dec_label_pc_50ad7:                               ; preds = %dec_label_pc_50a6d
  call void @printLine(ptr @global_var_87f1e)
  br label %dec_label_pc_50ae6

dec_label_pc_50ae6:                               ; preds = %dec_label_pc_50ad7, %dec_label_pc_50ac3
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_50afb, label %dec_label_pc_50af6

dec_label_pc_50af6:                               ; preds = %dec_label_pc_50ae6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_50afb

dec_label_pc_50afb:                               ; preds = %dec_label_pc_50af6, %dec_label_pc_50ae6
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

