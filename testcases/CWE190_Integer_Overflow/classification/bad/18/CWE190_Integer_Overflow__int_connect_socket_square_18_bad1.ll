@global_var_8f8f0 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_49672:
  %stack_var_-72.04.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-72.04.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4976a, label %dec_label_pc_496bd

dec_label_pc_496bd:                               ; preds = %dec_label_pc_49672
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_8f8f0)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_49760, label %dec_label_pc_49714

dec_label_pc_49714:                               ; preds = %dec_label_pc_496bd
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_49760, label %dec_label_pc_4973b

dec_label_pc_4973b:                               ; preds = %dec_label_pc_49714
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_49760

dec_label_pc_49760:                               ; preds = %dec_label_pc_496bd, %dec_label_pc_4973b, %dec_label_pc_49714
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.04.reg2mem, align 4
  br label %dec_label_pc_4976a

dec_label_pc_4976a:                               ; preds = %dec_label_pc_49672, %dec_label_pc_49760
  %stack_var_-72.04.reload = load i32, ptr %stack_var_-72.04.reg2mem, align 4
  %20 = mul i32 %stack_var_-72.04.reload, %stack_var_-72.04.reload
  call void @printIntLine(i32 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_49793, label %dec_label_pc_4978e

dec_label_pc_4978e:                               ; preds = %dec_label_pc_4976a
  call void @__stack_chk_fail()
  br label %dec_label_pc_49793

dec_label_pc_49793:                               ; preds = %dec_label_pc_4978e, %dec_label_pc_4976a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

