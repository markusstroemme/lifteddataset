@global_var_b8160 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_3ba09:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3bb43, label %dec_label_pc_3ba5a

dec_label_pc_3ba5a:                               ; preds = %dec_label_pc_3ba09
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3bb33.thread8, label %dec_label_pc_3baa6

dec_label_pc_3baa6:                               ; preds = %dec_label_pc_3ba5a
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3bb33.thread8, label %dec_label_pc_3baba

dec_label_pc_3baba:                               ; preds = %dec_label_pc_3baa6
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3bb33.thread8, label %dec_label_pc_3bad7

dec_label_pc_3bad7:                               ; preds = %dec_label_pc_3baba
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_3bb39, label %dec_label_pc_3bafe

dec_label_pc_3bafe:                               ; preds = %dec_label_pc_3bad7
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_3bb39

dec_label_pc_3bb33.thread8:                       ; preds = %dec_label_pc_3baba, %dec_label_pc_3baa6, %dec_label_pc_3ba5a
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_3bb43

dec_label_pc_3bb39:                               ; preds = %dec_label_pc_3bafe, %dec_label_pc_3bad7
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_3bb43

dec_label_pc_3bb43:                               ; preds = %dec_label_pc_3ba09, %dec_label_pc_3bb33.thread8, %dec_label_pc_3bb39
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  call void @anon0(i32 %stack_var_-72.047.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_3bb62, label %dec_label_pc_3bb5d

dec_label_pc_3bb5d:                               ; preds = %dec_label_pc_3bb43
  call void @__stack_chk_fail()
  br label %dec_label_pc_3bb62

dec_label_pc_3bb62:                               ; preds = %dec_label_pc_3bb5d, %dec_label_pc_3bb43
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_3bbbb:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_3bd1f:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp ugt i32 %data, 9
  br i1 %1, label %dec_label_pc_3bda3, label %dec_label_pc_3bd71

dec_label_pc_3bd71:                               ; preds = %dec_label_pc_3bd1f
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = sext i32 %data to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %2, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3bd87

dec_label_pc_3bd87:                               ; preds = %dec_label_pc_3bd87, %dec_label_pc_3bd71
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3bdb2, label %dec_label_pc_3bd87

dec_label_pc_3bda3:                               ; preds = %dec_label_pc_3bd1f
  call void @printLine(ptr @global_var_b8160)
  br label %dec_label_pc_3bdb2

dec_label_pc_3bdb2:                               ; preds = %dec_label_pc_3bd87, %dec_label_pc_3bda3
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_3bdc7, label %dec_label_pc_3bdc2

dec_label_pc_3bdc2:                               ; preds = %dec_label_pc_3bdb2
  call void @__stack_chk_fail()
  br label %dec_label_pc_3bdc7

dec_label_pc_3bdc7:                               ; preds = %dec_label_pc_3bdc2, %dec_label_pc_3bdb2
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

