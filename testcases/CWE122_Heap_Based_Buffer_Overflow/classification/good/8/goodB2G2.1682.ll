@global_var_bd304 = external constant [5 x i32]

define i32 @staticReturnsTrue.165() local_unnamed_addr {
dec_label_pc_109fc:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_10bf5:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.165()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %.reg2mem, align 8
  br i1 %1, label %dec_label_pc_10c64, label %dec_label_pc_10c17

dec_label_pc_10c17:                               ; preds = %dec_label_pc_10bf5
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_10c36, label %dec_label_pc_10c2c

dec_label_pc_10c2c:                               ; preds = %dec_label_pc_10c17
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10c36:                               ; preds = %dec_label_pc_10c17
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %stack_var_-32, align 8
  store ptr %10, ptr %.reg2mem, align 8
  br label %dec_label_pc_10c64

dec_label_pc_10c64:                               ; preds = %dec_label_pc_10c36, %dec_label_pc_10bf5
  %11 = call i32 @staticReturnsTrue.165()
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_10cd7, label %dec_label_pc_10c72

dec_label_pc_10c72:                               ; preds = %dec_label_pc_10c64
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = call i32 @wcslen(ptr %.reload)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 4)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_10cac, label %dec_label_pc_10ca2

dec_label_pc_10ca2:                               ; preds = %dec_label_pc_10c72
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10cac:                               ; preds = %dec_label_pc_10c72
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @wcscpy(ptr %18, ptr %.reload)
  call void @printWLine(ptr %18)
  call void @free(ptr %15)
  br label %dec_label_pc_10cd7

dec_label_pc_10cd7:                               ; preds = %dec_label_pc_10cac, %dec_label_pc_10c64
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

