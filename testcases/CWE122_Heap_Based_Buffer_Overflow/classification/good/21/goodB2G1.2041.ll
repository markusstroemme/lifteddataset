@global_var_b4314 = external constant [21 x i8]
@global_var_ec0d0 = external local_unnamed_addr global i32
@global_var_bd304 = external constant [5 x i32]

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_13803:
  %0 = load i32, ptr @global_var_ec0d0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1382e, label %dec_label_pc_1381d

dec_label_pc_1381d:                               ; preds = %dec_label_pc_13803
  call void @printLine(ptr @global_var_b4314)
  br label %dec_label_pc_13893

dec_label_pc_1382e:                               ; preds = %dec_label_pc_13803
  %2 = bitcast ptr %data to ptr
  %3 = call i32 @wcslen(ptr %2)
  %4 = add i32 %3, 1
  %5 = call ptr @calloc(i32 %4, i32 4)
  %6 = icmp eq ptr %5, null
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_13868, label %dec_label_pc_1385e

dec_label_pc_1385e:                               ; preds = %dec_label_pc_1382e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13868:                               ; preds = %dec_label_pc_1382e
  %8 = bitcast ptr %5 to ptr
  %9 = call ptr @wcscpy(ptr %8, ptr %2)
  call void @printWLine(ptr %8)
  call void @free(ptr %5)
  br label %dec_label_pc_13893

dec_label_pc_13893:                               ; preds = %dec_label_pc_13868, %dec_label_pc_1381d
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_13896:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_138c9, label %dec_label_pc_138bf

dec_label_pc_138bf:                               ; preds = %dec_label_pc_13896
  call void @exit(i32 -1)
  unreachable

dec_label_pc_138c9:                               ; preds = %dec_label_pc_13896
  %4 = call ptr @wmemset(ptr %1, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-16, align 8
  store i32 0, ptr @global_var_ec0d0, align 4
  %9 = bitcast ptr %8 to ptr
  call void @anon0(ptr %9)
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

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_9feb2:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9fee4, label %dec_label_pc_9fec9

dec_label_pc_9fec9:                               ; preds = %dec_label_pc_9feb2
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_bd304)
  br label %dec_label_pc_9fee4

dec_label_pc_9fee4:                               ; preds = %dec_label_pc_9fec9, %dec_label_pc_9feb2
  ret void
}

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

