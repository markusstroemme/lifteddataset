@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_43c63:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_43d9d, label %dec_label_pc_43cb4

dec_label_pc_43cb4:                               ; preds = %dec_label_pc_43c63
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_43d8d.thread4, label %dec_label_pc_43d00

dec_label_pc_43d00:                               ; preds = %dec_label_pc_43cb4
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_43d8d.thread4, label %dec_label_pc_43d14

dec_label_pc_43d14:                               ; preds = %dec_label_pc_43d00
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_43d8d.thread4, label %dec_label_pc_43d31

dec_label_pc_43d31:                               ; preds = %dec_label_pc_43d14
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_43d93, label %dec_label_pc_43d58

dec_label_pc_43d58:                               ; preds = %dec_label_pc_43d31
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %22 = sext i32 %21 to i64
  store i64 %22, ptr %stack_var_-72, align 8
  br label %dec_label_pc_43d93

dec_label_pc_43d8d.thread4:                       ; preds = %dec_label_pc_43d14, %dec_label_pc_43d00, %dec_label_pc_43cb4
  %23 = call i32 @close(i32 %1)
  br label %dec_label_pc_43d9d

dec_label_pc_43d93:                               ; preds = %dec_label_pc_43d58, %dec_label_pc_43d31
  %24 = call i32 @close(i32 %1)
  %25 = call i32 @close(i32 %10)
  br label %dec_label_pc_43d9d

dec_label_pc_43d9d:                               ; preds = %dec_label_pc_43c63, %dec_label_pc_43d8d.thread4, %dec_label_pc_43d93
  %26 = bitcast ptr %stack_var_-72 to ptr
  call void @anon1(ptr nonnull %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_43dbe, label %dec_label_pc_43db9

dec_label_pc_43db9:                               ; preds = %dec_label_pc_43d9d
  call void @__stack_chk_fail()
  br label %dec_label_pc_43dbe

dec_label_pc_43dbe:                               ; preds = %dec_label_pc_43db9, %dec_label_pc_43d9d
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_43f88:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1
  call void @printIntLine(i32 %3)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

