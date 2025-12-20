@global_var_b9180 = external constant [21 x i8]
@global_var_ec2d0 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_67cb1:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec2d0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_67cdc, label %dec_label_pc_67ccb

dec_label_pc_67ccb:                               ; preds = %dec_label_pc_67cb1
  call void @printLine(ptr @global_var_b9180)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_67cfb

dec_label_pc_67cdc:                               ; preds = %dec_label_pc_67cb1
  %2 = call ptr @malloc(i32 11)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_67cfb, label %dec_label_pc_67cf1

dec_label_pc_67cf1:                               ; preds = %dec_label_pc_67cdc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_67cfb:                               ; preds = %dec_label_pc_67cdc, %dec_label_pc_67ccb
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_67d01:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_ec2d0, align 4
  %1 = call ptr @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_67d9e, label %dec_label_pc_67d70.lr.ph

dec_label_pc_67d70.lr.ph:                         ; preds = %dec_label_pc_67d01
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_67d70

dec_label_pc_67d70:                               ; preds = %dec_label_pc_67d70, %dec_label_pc_67d70.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %9 = add i64 %.reload, %7
  %10 = add i64 %.reload, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %14, %5
  store i64 %14, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_67d9e, label %dec_label_pc_67d70

dec_label_pc_67d9e:                               ; preds = %dec_label_pc_67d70, %dec_label_pc_67d01
  call void @printLine(ptr %1)
  %15 = bitcast ptr %1 to ptr
  call void @free(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_67dcb, label %dec_label_pc_67dc6

dec_label_pc_67dc6:                               ; preds = %dec_label_pc_67d9e
  call void @__stack_chk_fail()
  br label %dec_label_pc_67dcb

dec_label_pc_67dcb:                               ; preds = %dec_label_pc_67dc6, %dec_label_pc_67d9e
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

