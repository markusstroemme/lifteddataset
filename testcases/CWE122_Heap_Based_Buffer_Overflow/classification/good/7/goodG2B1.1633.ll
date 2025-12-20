@global_var_b4281 = external constant [21 x i8]
@global_var_ec01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10804:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec01c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_10834, label %dec_label_pc_10823

dec_label_pc_10823:                               ; preds = %dec_label_pc_10804
  call void @printLine(ptr @global_var_b4281)
  store ptr null, ptr %.reg2mem, align 8
  br label %dec_label_pc_1087c

dec_label_pc_10834:                               ; preds = %dec_label_pc_10804
  %2 = call ptr @malloc(i32 50)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_10853, label %dec_label_pc_10849

dec_label_pc_10849:                               ; preds = %dec_label_pc_10834
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10853:                               ; preds = %dec_label_pc_10834
  %6 = call ptr @memset(ptr %2, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %stack_var_-32, align 8
  store ptr %10, ptr %.reg2mem, align 8
  br label %dec_label_pc_1087c

dec_label_pc_1087c:                               ; preds = %dec_label_pc_10853, %dec_label_pc_10823
  %11 = load i32, ptr @global_var_ec01c, align 4
  %12 = icmp eq i32 %11, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_108ec, label %dec_label_pc_10887

dec_label_pc_10887:                               ; preds = %dec_label_pc_1087c
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = call i32 @strlen(ptr %.reload)
  %15 = add i32 %14, 1
  %16 = call ptr @calloc(i32 %15, i32 1)
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i1 %17, false
  br i1 %18, label %dec_label_pc_108c1, label %dec_label_pc_108b7

dec_label_pc_108b7:                               ; preds = %dec_label_pc_10887
  call void @exit(i32 -1)
  unreachable

dec_label_pc_108c1:                               ; preds = %dec_label_pc_10887
  %19 = bitcast ptr %16 to ptr
  %20 = call ptr @strcpy(ptr %19, ptr %.reload)
  call void @printLine(ptr %19)
  call void @free(ptr %16)
  br label %dec_label_pc_108ec

dec_label_pc_108ec:                               ; preds = %dec_label_pc_108c1, %dec_label_pc_1087c
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

