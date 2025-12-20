@global_var_ec074 = external local_unnamed_addr global i32
@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_12830:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %.reg2mem, align 8
  store i32 %0, ptr %.reg2mem4, align 4
  br i1 %2, label %dec_label_pc_1289c, label %dec_label_pc_1284f

dec_label_pc_1284f:                               ; preds = %dec_label_pc_12830
  %3 = call ptr @malloc(i32 200)
  %4 = bitcast ptr %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1286e, label %dec_label_pc_12864

dec_label_pc_12864:                               ; preds = %dec_label_pc_1284f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1286e:                               ; preds = %dec_label_pc_1284f
  %7 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 196
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %stack_var_-32, align 8
  %.pre = load i32, ptr @global_var_ec074, align 4
  store ptr %11, ptr %.reg2mem, align 8
  store i32 %.pre, ptr %.reg2mem4, align 4
  br label %dec_label_pc_1289c

dec_label_pc_1289c:                               ; preds = %dec_label_pc_1286e, %dec_label_pc_12830
  %.reload5 = load i32, ptr %.reg2mem4, align 4
  %12 = icmp eq i32 %.reload5, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_1290c, label %dec_label_pc_128a7

dec_label_pc_128a7:                               ; preds = %dec_label_pc_1289c
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = call i32 @wcslen(ptr %.reload)
  %15 = add i32 %14, 1
  %16 = call ptr @calloc(i32 %15, i32 4)
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i1 %17, false
  br i1 %18, label %dec_label_pc_128e1, label %dec_label_pc_128d7

dec_label_pc_128d7:                               ; preds = %dec_label_pc_128a7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_128e1:                               ; preds = %dec_label_pc_128a7
  %19 = bitcast ptr %16 to ptr
  %20 = call ptr @wcscpy(ptr %19, ptr %.reload)
  call void @printWLine(ptr %19)
  call void @free(ptr %16)
  br label %dec_label_pc_1290c

dec_label_pc_1290c:                               ; preds = %dec_label_pc_128e1, %dec_label_pc_1289c
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

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

