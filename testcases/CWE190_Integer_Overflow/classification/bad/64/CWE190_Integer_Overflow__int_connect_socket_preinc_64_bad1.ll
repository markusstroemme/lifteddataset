@global_var_85926 = external constant [10 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2e787:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-68 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-68, align 4
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_2e87e, label %dec_label_pc_2e7d1

dec_label_pc_2e7d1:                               ; preds = %dec_label_pc_2e787
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_85926)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_2e874, label %dec_label_pc_2e828

dec_label_pc_2e828:                               ; preds = %dec_label_pc_2e7d1
  %8 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %9 = add i32 %8, 1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %dec_label_pc_2e874, label %dec_label_pc_2e84f

dec_label_pc_2e84f:                               ; preds = %dec_label_pc_2e828
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %8 to i64
  %13 = add i64 %11, -22
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = bitcast ptr %stack_var_-30 to ptr
  %17 = call i32 @atoi(ptr nonnull %16)
  store i32 %17, ptr %stack_var_-68, align 4
  br label %dec_label_pc_2e874

dec_label_pc_2e874:                               ; preds = %dec_label_pc_2e828, %dec_label_pc_2e84f, %dec_label_pc_2e7d1
  %18 = call i32 @close(i32 %1)
  br label %dec_label_pc_2e87e

dec_label_pc_2e87e:                               ; preds = %dec_label_pc_2e787, %dec_label_pc_2e874
  %19 = bitcast ptr %stack_var_-68 to ptr
  call void @anon1(ptr nonnull %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_2e89f, label %dec_label_pc_2e89a

dec_label_pc_2e89a:                               ; preds = %dec_label_pc_2e87e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e89f

dec_label_pc_2e89f:                               ; preds = %dec_label_pc_2e89a, %dec_label_pc_2e87e
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_2ea26:
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
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

