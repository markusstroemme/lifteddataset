@global_var_b69b0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_3a718:
  call void @anon0(i32 7)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_3a7df:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_3a833:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_3a887:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_3a98a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3a9c1, label %dec_label_pc_3a9ae

dec_label_pc_3a9ae:                               ; preds = %dec_label_pc_3a98a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3a9c1:                               ; preds = %dec_label_pc_3a98a, %dec_label_pc_3a9c1
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_3a9e5, label %dec_label_pc_3a9c1

dec_label_pc_3a9e5:                               ; preds = %dec_label_pc_3a9c1
  %7 = icmp slt i32 %data, 0
  br i1 %7, label %dec_label_pc_3aa37, label %dec_label_pc_3a9eb

dec_label_pc_3a9eb:                               ; preds = %dec_label_pc_3a9e5
  %8 = sext i32 %data to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3aa0e

dec_label_pc_3aa0e:                               ; preds = %dec_label_pc_3aa0e, %dec_label_pc_3a9eb
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3aa46, label %dec_label_pc_3aa0e

dec_label_pc_3aa37:                               ; preds = %dec_label_pc_3a9e5
  call void @printLine(ptr @global_var_b69b0)
  br label %dec_label_pc_3aa46

dec_label_pc_3aa46:                               ; preds = %dec_label_pc_3aa0e, %dec_label_pc_3aa37
  call void @free(ptr %0)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

