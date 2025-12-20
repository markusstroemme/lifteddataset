@global_var_b4281 = external constant [21 x i8]
@global_var_ec01c = external local_unnamed_addr global i32
@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_10635:
  %.reg2mem4 = alloca i32, align 4
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec01c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %.reg2mem, align 8
  store i32 %0, ptr %.reg2mem4, align 4
  br i1 %2, label %dec_label_pc_106a1, label %dec_label_pc_10654

dec_label_pc_10654:                               ; preds = %dec_label_pc_10635
  %3 = call ptr @malloc(i32 200)
  %4 = bitcast ptr %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_10673, label %dec_label_pc_10669

dec_label_pc_10669:                               ; preds = %dec_label_pc_10654
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10673:                               ; preds = %dec_label_pc_10654
  %7 = call ptr @wmemset(ptr %4, i32 65, i32 49)
  %8 = ptrtoint ptr %3 to i64
  %9 = add i64 %8, 196
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %stack_var_-32, align 8
  %.pr = load i32, ptr @global_var_ec01c, align 4
  store ptr %11, ptr %.reg2mem, align 8
  store i32 %.pr, ptr %.reg2mem4, align 4
  br label %dec_label_pc_106a1

dec_label_pc_106a1:                               ; preds = %dec_label_pc_10673, %dec_label_pc_10635
  %.reload5 = load i32, ptr %.reg2mem4, align 4
  %12 = icmp eq i32 %.reload5, 5
  br i1 %12, label %dec_label_pc_106bd, label %dec_label_pc_106ac

dec_label_pc_106ac:                               ; preds = %dec_label_pc_106a1
  call void @printLine(ptr @global_var_b4281)
  br label %dec_label_pc_10722

dec_label_pc_106bd:                               ; preds = %dec_label_pc_106a1
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = call i32 @wcslen(ptr %.reload)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 4)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_106f7, label %dec_label_pc_106ed

dec_label_pc_106ed:                               ; preds = %dec_label_pc_106bd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_106f7:                               ; preds = %dec_label_pc_106bd
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @wcscpy(ptr %18, ptr %.reload)
  call void @printWLine(ptr %18)
  call void @free(ptr %15)
  br label %dec_label_pc_10722

dec_label_pc_10722:                               ; preds = %dec_label_pc_106f7, %dec_label_pc_106ac
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

