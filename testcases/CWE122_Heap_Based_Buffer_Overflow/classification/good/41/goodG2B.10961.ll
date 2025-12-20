define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_688ff:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_6897e, label %dec_label_pc_68950.lr.ph

dec_label_pc_68950.lr.ph:                         ; preds = %dec_label_pc_688ff
  %6 = ptrtoint ptr %data to i64
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_68950

dec_label_pc_68950:                               ; preds = %dec_label_pc_68950, %dec_label_pc_68950.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = add i64 %storemerge2.reload, %6
  %9 = add i64 %storemerge2.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %13, %4
  store i64 %13, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6897e, label %dec_label_pc_68950

dec_label_pc_6897e:                               ; preds = %dec_label_pc_68950, %dec_label_pc_688ff
  call void @printLine(ptr %data)
  %14 = bitcast ptr %data to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_689ab, label %dec_label_pc_689a6

dec_label_pc_689a6:                               ; preds = %dec_label_pc_6897e
  call void @__stack_chk_fail()
  br label %dec_label_pc_689ab

dec_label_pc_689ab:                               ; preds = %dec_label_pc_689a6, %dec_label_pc_6897e
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_689ad:
  %0 = call ptr @malloc(i32 11)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_689e0, label %dec_label_pc_689d6

dec_label_pc_689d6:                               ; preds = %dec_label_pc_689ad
  call void @exit(i32 -1)
  unreachable

dec_label_pc_689e0:                               ; preds = %dec_label_pc_689ad
  %3 = bitcast ptr %0 to ptr
  call void @anon0(ptr %3)
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

