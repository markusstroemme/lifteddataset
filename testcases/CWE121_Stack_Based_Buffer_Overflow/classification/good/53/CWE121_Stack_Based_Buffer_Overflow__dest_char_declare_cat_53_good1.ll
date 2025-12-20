define void @anon3() local_unnamed_addr {
dec_label_pc_1b704:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  %8 = inttoptr i64 %7 to ptr
  call void @anon0(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1b74f, label %dec_label_pc_1b74a

dec_label_pc_1b74a:                               ; preds = %dec_label_pc_1b704
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b74f

dec_label_pc_1b74f:                               ; preds = %dec_label_pc_1b74a, %dec_label_pc_1b704
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1b785:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1b7c3:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_1b851:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcat(ptr %data, ptr nonnull %2)
  call void @printLine(ptr %data)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1b8be, label %dec_label_pc_1b8b9

dec_label_pc_1b8b9:                               ; preds = %dec_label_pc_1b851
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b8be

dec_label_pc_1b8be:                               ; preds = %dec_label_pc_1b8b9, %dec_label_pc_1b851
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

