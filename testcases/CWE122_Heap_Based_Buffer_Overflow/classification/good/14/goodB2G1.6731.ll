@global_var_b70a8 = external constant [21 x i8]
@global_var_b70c0 = external constant [36 x i8]
@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4042a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_4046e, label %dec_label_pc_4045a

dec_label_pc_4045a:                               ; preds = %dec_label_pc_4042a
  call void @printLine(ptr @global_var_b70a8)
  br label %dec_label_pc_4052d

dec_label_pc_4046e:                               ; preds = %dec_label_pc_4042a
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %5, label %dec_label_pc_40496, label %dec_label_pc_40483

dec_label_pc_40483:                               ; preds = %dec_label_pc_4046e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_40496:                               ; preds = %dec_label_pc_4046e, %dec_label_pc_40496
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %6 = mul i64 %indvars.iv.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_40512, label %dec_label_pc_40496

dec_label_pc_40512:                               ; preds = %dec_label_pc_40496
  call void @printLine(ptr @global_var_b70c0)
  call void @free(ptr %2)
  br label %dec_label_pc_4052d

dec_label_pc_4052d:                               ; preds = %dec_label_pc_40512, %dec_label_pc_4045a
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

