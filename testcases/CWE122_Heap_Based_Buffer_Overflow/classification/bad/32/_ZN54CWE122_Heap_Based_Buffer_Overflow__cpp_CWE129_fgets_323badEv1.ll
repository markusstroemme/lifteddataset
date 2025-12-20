@global_var_aacc0 = external constant [16 x i8]
@global_var_aacd0 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2c7ec:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %stack_var_-68.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_2c86f, label %dec_label_pc_2c85e

dec_label_pc_2c85e:                               ; preds = %dec_label_pc_2c7ec
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %stack_var_-68.0.reg2mem, align 4
  br label %dec_label_pc_2c87e

dec_label_pc_2c86f:                               ; preds = %dec_label_pc_2c7ec
  call void @printLine(ptr @global_var_aacc0)
  store i32 -1, ptr %stack_var_-68.0.reg2mem, align 4
  br label %dec_label_pc_2c87e

dec_label_pc_2c87e:                               ; preds = %dec_label_pc_2c86f, %dec_label_pc_2c85e
  %stack_var_-68.0.reload = load i32, ptr %stack_var_-68.0.reg2mem, align 4
  %8 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_2c8a7

dec_label_pc_2c8a7:                               ; preds = %dec_label_pc_2c8a7, %dec_label_pc_2c87e
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %9 = mul i64 %indvars.iv6.reload, 4
  %10 = add i64 %9, %8
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_2c8cb, label %dec_label_pc_2c8a7

dec_label_pc_2c8cb:                               ; preds = %dec_label_pc_2c8a7
  %12 = icmp slt i32 %stack_var_-68.0.reload, 0
  br i1 %12, label %dec_label_pc_2c91d, label %dec_label_pc_2c8d1

dec_label_pc_2c8d1:                               ; preds = %dec_label_pc_2c8cb
  %13 = sext i32 %stack_var_-68.0.reload to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %8
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2c8f4

dec_label_pc_2c8f4:                               ; preds = %dec_label_pc_2c8f4, %dec_label_pc_2c8d1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %17 = mul i64 %indvars.iv.reload, 4
  %18 = add i64 %17, %8
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2c92c, label %dec_label_pc_2c8f4

dec_label_pc_2c91d:                               ; preds = %dec_label_pc_2c8cb
  call void @printLine(ptr @global_var_aacd0)
  br label %dec_label_pc_2c92c

dec_label_pc_2c92c:                               ; preds = %dec_label_pc_2c8f4, %dec_label_pc_2c91d
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %dec_label_pc_2c93f, label %dec_label_pc_2c933

dec_label_pc_2c933:                               ; preds = %dec_label_pc_2c92c
  %22 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %22, ptr inttoptr (i64 14 to ptr))
  br label %dec_label_pc_2c93f

dec_label_pc_2c93f:                               ; preds = %dec_label_pc_2c933, %dec_label_pc_2c92c
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_2c954, label %dec_label_pc_2c94f

dec_label_pc_2c94f:                               ; preds = %dec_label_pc_2c93f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2c954

dec_label_pc_2c954:                               ; preds = %dec_label_pc_2c94f, %dec_label_pc_2c93f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

