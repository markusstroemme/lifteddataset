@global_var_87858 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_431ff:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_43339, label %dec_label_pc_43250

dec_label_pc_43250:                               ; preds = %dec_label_pc_431ff
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_43329.thread8, label %dec_label_pc_4329c

dec_label_pc_4329c:                               ; preds = %dec_label_pc_43250
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_43329.thread8, label %dec_label_pc_432b0

dec_label_pc_432b0:                               ; preds = %dec_label_pc_4329c
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_43329.thread8, label %dec_label_pc_432cd

dec_label_pc_432cd:                               ; preds = %dec_label_pc_432b0
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_4332f, label %dec_label_pc_432f4

dec_label_pc_432f4:                               ; preds = %dec_label_pc_432cd
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_4332f

dec_label_pc_43329.thread8:                       ; preds = %dec_label_pc_432b0, %dec_label_pc_4329c, %dec_label_pc_43250
  %22 = call i32 @close(i32 %1)
  store i32 0, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_43339

dec_label_pc_4332f:                               ; preds = %dec_label_pc_432f4, %dec_label_pc_432cd
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_43339

dec_label_pc_43339:                               ; preds = %dec_label_pc_431ff, %dec_label_pc_43329.thread8, %dec_label_pc_4332f
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  call void @anon0(i32 %stack_var_-72.047.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_43358, label %dec_label_pc_43353

dec_label_pc_43353:                               ; preds = %dec_label_pc_43339
  call void @__stack_chk_fail()
  br label %dec_label_pc_43358

dec_label_pc_43358:                               ; preds = %dec_label_pc_43353, %dec_label_pc_43339
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_433b1:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_43405:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_43459:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_434c1:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_434ef, label %dec_label_pc_434d9

dec_label_pc_434d9:                               ; preds = %dec_label_pc_434c1
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_434fe

dec_label_pc_434ef:                               ; preds = %dec_label_pc_434c1
  call void @printLine(ptr @global_var_87858)
  br label %dec_label_pc_434fe

dec_label_pc_434fe:                               ; preds = %dec_label_pc_434ef, %dec_label_pc_434d9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

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

