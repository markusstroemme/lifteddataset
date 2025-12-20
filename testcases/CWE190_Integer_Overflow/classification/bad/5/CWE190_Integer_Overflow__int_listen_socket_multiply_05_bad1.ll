@global_var_8c32c = external constant [4 x i8]
@global_var_b8040 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_30ed4:
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8040, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3103e, label %dec_label_pc_30f04

dec_label_pc_30f04:                               ; preds = %dec_label_pc_30ed4
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %dec_label_pc_3103e, label %dec_label_pc_30f33

dec_label_pc_30f33:                               ; preds = %dec_label_pc_30f04
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 27015)
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3100c.thread8, label %dec_label_pc_30f7f

dec_label_pc_30f7f:                               ; preds = %dec_label_pc_30f33
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3100c.thread8, label %dec_label_pc_30f93

dec_label_pc_30f93:                               ; preds = %dec_label_pc_30f7f
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_3100c.thread8, label %dec_label_pc_30fb0

dec_label_pc_30fb0:                               ; preds = %dec_label_pc_30f93
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_3101c, label %dec_label_pc_30fd7

dec_label_pc_30fd7:                               ; preds = %dec_label_pc_30fb0
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3101c

dec_label_pc_3100c.thread8:                       ; preds = %dec_label_pc_30f93, %dec_label_pc_30f7f, %dec_label_pc_30f33
  %24 = call i32 @close(i32 %3)
  br label %dec_label_pc_3103e

dec_label_pc_3101c:                               ; preds = %dec_label_pc_30fb0, %dec_label_pc_30fd7
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  %27 = load i32, ptr @global_var_b8040, align 4
  %28 = icmp eq i32 %27, 0
  %29 = icmp slt i32 %stack_var_-76.0.ph.reload, 1
  %or.cond3 = or i1 %29, %28
  br i1 %or.cond3, label %dec_label_pc_3103e, label %dec_label_pc_3102c

dec_label_pc_3102c:                               ; preds = %dec_label_pc_3101c
  %30 = mul i32 %stack_var_-76.0.ph.reload, 2
  call void @printIntLine(i32 %30)
  br label %dec_label_pc_3103e

dec_label_pc_3103e:                               ; preds = %dec_label_pc_30f04, %dec_label_pc_3100c.thread8, %dec_label_pc_30ed4, %dec_label_pc_3102c, %dec_label_pc_3101c
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_31053, label %dec_label_pc_3104e

dec_label_pc_3104e:                               ; preds = %dec_label_pc_3103e
  call void @__stack_chk_fail()
  br label %dec_label_pc_31053

dec_label_pc_31053:                               ; preds = %dec_label_pc_3104e, %dec_label_pc_3103e
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

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

