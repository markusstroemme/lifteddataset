@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_670fe:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-56.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-56.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_6714b, label %dec_label_pc_6712c

dec_label_pc_6712c:                               ; preds = %dec_label_pc_670fe
  %4 = call ptr @malloc(i32 10)
  %5 = bitcast ptr %4 to ptr
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store ptr %5, ptr %stack_var_-56.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6714b, label %dec_label_pc_67141

dec_label_pc_67141:                               ; preds = %dec_label_pc_6712c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6714b:                               ; preds = %dec_label_pc_6712c, %dec_label_pc_670fe
  %stack_var_-56.0.reload = load ptr, ptr %stack_var_-56.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %8 = bitcast ptr %stack_var_-27 to ptr
  %9 = call i32 @strlen(ptr nonnull %8)
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %dec_label_pc_671ab, label %dec_label_pc_6717d.lr.ph

dec_label_pc_6717d.lr.ph:                         ; preds = %dec_label_pc_6714b
  %13 = ptrtoint ptr %stack_var_-56.0.reload to i64
  %14 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_6717d

dec_label_pc_6717d:                               ; preds = %dec_label_pc_6717d, %dec_label_pc_6717d.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %15 = add i64 %storemerge2.reload, %13
  %16 = add i64 %storemerge2.reload, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %15 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %20, %11
  store i64 %20, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_671ab, label %dec_label_pc_6717d

dec_label_pc_671ab:                               ; preds = %dec_label_pc_6717d, %dec_label_pc_6714b
  call void @printLine(ptr %stack_var_-56.0.reload)
  %21 = bitcast ptr %stack_var_-56.0.reload to ptr
  call void @free(ptr %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_671d8, label %dec_label_pc_671d3

dec_label_pc_671d3:                               ; preds = %dec_label_pc_671ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_671d8

dec_label_pc_671d8:                               ; preds = %dec_label_pc_671d3, %dec_label_pc_671ab
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

