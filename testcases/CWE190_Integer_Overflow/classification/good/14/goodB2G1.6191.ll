@global_var_725b8 = external constant [4 x i8]
@global_var_725bc = external constant [21 x i8]
@global_var_725d8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_20d5f:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_20dad, label %dec_label_pc_20d8b

dec_label_pc_20d8b:                               ; preds = %dec_label_pc_20d5f
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_725b8, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_20dad

dec_label_pc_20dad:                               ; preds = %dec_label_pc_20d8b, %dec_label_pc_20d5f
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_20dc9, label %dec_label_pc_20db8

dec_label_pc_20db8:                               ; preds = %dec_label_pc_20dad
  call void @printLine(ptr @global_var_725bc)
  br label %dec_label_pc_20e02

dec_label_pc_20dc9:                               ; preds = %dec_label_pc_20dad
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  br i1 %8, label %dec_label_pc_20e02, label %dec_label_pc_20dd2

dec_label_pc_20dd2:                               ; preds = %dec_label_pc_20dc9
  %9 = icmp sgt i16 %7, 16382
  br i1 %9, label %dec_label_pc_20df3, label %dec_label_pc_20ddc

dec_label_pc_20ddc:                               ; preds = %dec_label_pc_20dd2
  %10 = mul i16 %7, 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_20e02

dec_label_pc_20df3:                               ; preds = %dec_label_pc_20dd2
  call void @printLine(ptr @global_var_725d8)
  br label %dec_label_pc_20e02

dec_label_pc_20e02:                               ; preds = %dec_label_pc_20df3, %dec_label_pc_20ddc, %dec_label_pc_20dc9, %dec_label_pc_20db8
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_20e17, label %dec_label_pc_20e12

dec_label_pc_20e12:                               ; preds = %dec_label_pc_20e02
  call void @__stack_chk_fail()
  br label %dec_label_pc_20e17

dec_label_pc_20e17:                               ; preds = %dec_label_pc_20e12, %dec_label_pc_20e02
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

