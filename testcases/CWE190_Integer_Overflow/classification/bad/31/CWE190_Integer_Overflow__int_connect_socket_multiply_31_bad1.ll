@global_var_8eeb8 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_41005:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_41120, label %dec_label_pc_4104f

dec_label_pc_4104f:                               ; preds = %dec_label_pc_41005
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_8eeb8)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_410fc.thread4, label %dec_label_pc_410a6

dec_label_pc_410a6:                               ; preds = %dec_label_pc_4104f
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %dec_label_pc_410fc.thread4, label %dec_label_pc_410fc

dec_label_pc_410fc.thread4:                       ; preds = %dec_label_pc_410a6, %dec_label_pc_4104f
  %12 = call i32 @close(i32 %1)
  br label %dec_label_pc_41120

dec_label_pc_410fc:                               ; preds = %dec_label_pc_410a6
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %9 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  %20 = call i32 @close(i32 %1)
  %21 = icmp slt i32 %19, 1
  br i1 %21, label %dec_label_pc_41120, label %dec_label_pc_4110e

dec_label_pc_4110e:                               ; preds = %dec_label_pc_410fc
  %22 = mul i32 %19, 2
  call void @printIntLine(i32 %22)
  br label %dec_label_pc_41120

dec_label_pc_41120:                               ; preds = %dec_label_pc_41005, %dec_label_pc_410fc.thread4, %dec_label_pc_4110e, %dec_label_pc_410fc
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_41135, label %dec_label_pc_41130

dec_label_pc_41130:                               ; preds = %dec_label_pc_41120
  call void @__stack_chk_fail()
  br label %dec_label_pc_41135

dec_label_pc_41135:                               ; preds = %dec_label_pc_41130, %dec_label_pc_41120
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

