define void @anon0() local_unnamed_addr {
dec_label_pc_3aa10:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_3ab55, label %dec_label_pc_3aa6c

dec_label_pc_3aa6c:                               ; preds = %dec_label_pc_3aa10
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3ab45.thread4, label %dec_label_pc_3aab8

dec_label_pc_3aab8:                               ; preds = %dec_label_pc_3aa6c
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3ab45.thread4, label %dec_label_pc_3aacc

dec_label_pc_3aacc:                               ; preds = %dec_label_pc_3aab8
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3ab45.thread4, label %dec_label_pc_3aae9

dec_label_pc_3aae9:                               ; preds = %dec_label_pc_3aacc
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_3ab4b, label %dec_label_pc_3ab10

dec_label_pc_3ab10:                               ; preds = %dec_label_pc_3aae9
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  br label %dec_label_pc_3ab4b

dec_label_pc_3ab45.thread4:                       ; preds = %dec_label_pc_3aacc, %dec_label_pc_3aab8, %dec_label_pc_3aa6c
  %22 = call i32 @close(i32 %1)
  br label %dec_label_pc_3ab55

dec_label_pc_3ab4b:                               ; preds = %dec_label_pc_3ab10, %dec_label_pc_3aae9
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  br label %dec_label_pc_3ab55

dec_label_pc_3ab55:                               ; preds = %dec_label_pc_3aa10, %dec_label_pc_3ab45.thread4, %dec_label_pc_3ab4b
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_3ab75, label %dec_label_pc_3ab70

dec_label_pc_3ab70:                               ; preds = %dec_label_pc_3ab55
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ab75

dec_label_pc_3ab75:                               ; preds = %dec_label_pc_3ab70, %dec_label_pc_3ab55
  ret void
}

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

