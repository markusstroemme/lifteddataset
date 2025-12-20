@global_var_81110 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_b120:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b13e:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_b1c0, label %dec_label_pc_b16e

dec_label_pc_b16e:                                ; preds = %dec_label_pc_b13e
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_b1b1, label %dec_label_pc_b1a0

dec_label_pc_b1a0:                                ; preds = %dec_label_pc_b16e
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_b1c0

dec_label_pc_b1b1:                                ; preds = %dec_label_pc_b16e
  call void @printLine(ptr @global_var_81110)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_b1c0

dec_label_pc_b1c0:                                ; preds = %dec_label_pc_b1b1, %dec_label_pc_b1a0, %dec_label_pc_b13e
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %8 = call i32 @staticReturnsTrue()
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %stack_var_-40.0.reload, 1
  %or.cond = or i1 %10, %9
  br i1 %or.cond, label %dec_label_pc_b1e6, label %dec_label_pc_b1d4

dec_label_pc_b1d4:                                ; preds = %dec_label_pc_b1c0
  %11 = mul i32 %stack_var_-40.0.reload, 2
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_b1e6

dec_label_pc_b1e6:                                ; preds = %dec_label_pc_b1d4, %dec_label_pc_b1c0
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_b1fb, label %dec_label_pc_b1f6

dec_label_pc_b1f6:                                ; preds = %dec_label_pc_b1e6
  call void @__stack_chk_fail()
  br label %dec_label_pc_b1fb

dec_label_pc_b1fb:                                ; preds = %dec_label_pc_b1f6, %dec_label_pc_b1e6
  ret void
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

