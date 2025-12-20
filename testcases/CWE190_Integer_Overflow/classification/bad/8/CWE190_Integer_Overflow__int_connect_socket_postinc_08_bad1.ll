@global_var_853e0 = external constant [10 x i8]
@global_var_8ca7c = external constant [4 x i8]

define i32 @staticReturnsTrue.743() local_unnamed_addr {
dec_label_pc_28605:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_28623:
  %stack_var_-72.1.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.743()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2872c, label %dec_label_pc_28657

dec_label_pc_28657:                               ; preds = %dec_label_pc_28623
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_2872c, label %dec_label_pc_2867f

dec_label_pc_2867f:                               ; preds = %dec_label_pc_28657
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_853e0)
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_28722, label %dec_label_pc_286d6

dec_label_pc_286d6:                               ; preds = %dec_label_pc_2867f
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_28722, label %dec_label_pc_286fd

dec_label_pc_286fd:                               ; preds = %dec_label_pc_286d6
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_28722

dec_label_pc_28722:                               ; preds = %dec_label_pc_2867f, %dec_label_pc_286fd, %dec_label_pc_286d6
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.1.reg2mem, align 4
  br label %dec_label_pc_2872c

dec_label_pc_2872c:                               ; preds = %dec_label_pc_28657, %dec_label_pc_28722, %dec_label_pc_28623
  %22 = call i32 @staticReturnsTrue.743()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_2874e, label %dec_label_pc_2873a

dec_label_pc_2873a:                               ; preds = %dec_label_pc_2872c
  %stack_var_-72.1.reload = load i32, ptr %stack_var_-72.1.reg2mem, align 4
  %24 = add i32 %stack_var_-72.1.reload, 1
  call void @printIntLine(i32 %24)
  br label %dec_label_pc_2874e

dec_label_pc_2874e:                               ; preds = %dec_label_pc_2873a, %dec_label_pc_2872c
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_28763, label %dec_label_pc_2875e

dec_label_pc_2875e:                               ; preds = %dec_label_pc_2874e
  call void @__stack_chk_fail()
  br label %dec_label_pc_28763

dec_label_pc_28763:                               ; preds = %dec_label_pc_2875e, %dec_label_pc_2874e
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

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

