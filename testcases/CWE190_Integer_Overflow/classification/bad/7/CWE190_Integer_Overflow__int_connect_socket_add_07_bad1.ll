@global_var_8df08 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c304c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_342a5:
  %stack_var_-72.1.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_c304c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_343ab, label %dec_label_pc_342d6

dec_label_pc_342d6:                               ; preds = %dec_label_pc_342a5
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_343ab, label %dec_label_pc_342fe

dec_label_pc_342fe:                               ; preds = %dec_label_pc_342d6
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_8df08)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_343a1, label %dec_label_pc_34355

dec_label_pc_34355:                               ; preds = %dec_label_pc_342fe
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_343a1, label %dec_label_pc_3437c

dec_label_pc_3437c:                               ; preds = %dec_label_pc_34355
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_343a1

dec_label_pc_343a1:                               ; preds = %dec_label_pc_342fe, %dec_label_pc_3437c, %dec_label_pc_34355
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %22 = call i32 @close(i32 %4)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.1.reg2mem, align 4
  br label %dec_label_pc_343ab

dec_label_pc_343ab:                               ; preds = %dec_label_pc_342d6, %dec_label_pc_343a1, %dec_label_pc_342a5
  %23 = load i32, ptr @global_var_c304c, align 4
  %24 = icmp eq i32 %23, 5
  %25 = icmp eq i1 %24, false
  br i1 %25, label %dec_label_pc_343c9, label %dec_label_pc_343b6

dec_label_pc_343b6:                               ; preds = %dec_label_pc_343ab
  %stack_var_-72.1.reload = load i32, ptr %stack_var_-72.1.reg2mem, align 4
  %26 = add i32 %stack_var_-72.1.reload, 1
  call void @printIntLine(i32 %26)
  br label %dec_label_pc_343c9

dec_label_pc_343c9:                               ; preds = %dec_label_pc_343b6, %dec_label_pc_343ab
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_343de, label %dec_label_pc_343d9

dec_label_pc_343d9:                               ; preds = %dec_label_pc_343c9
  call void @__stack_chk_fail()
  br label %dec_label_pc_343de

dec_label_pc_343de:                               ; preds = %dec_label_pc_343d9, %dec_label_pc_343c9
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

