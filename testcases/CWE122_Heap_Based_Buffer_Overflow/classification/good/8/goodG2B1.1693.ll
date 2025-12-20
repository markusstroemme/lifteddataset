@global_var_b4296 = external constant [21 x i8]

define i32 @staticReturnsTrue.165() local_unnamed_addr {
dec_label_pc_109fc:
  ret i32 1
}

define i32 @staticReturnsFalse.166() local_unnamed_addr {
dec_label_pc_10a0b:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_10cda:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i32 @staticReturnsFalse.166()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_10d0d, label %dec_label_pc_10cfc

dec_label_pc_10cfc:                               ; preds = %dec_label_pc_10cda
  call void @printLine(ptr @global_var_b4296)
  store ptr null, ptr %.reg2mem, align 8
  br label %dec_label_pc_10d55

dec_label_pc_10d0d:                               ; preds = %dec_label_pc_10cda
  %2 = call ptr @malloc(i32 50)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_10d2c, label %dec_label_pc_10d22

dec_label_pc_10d22:                               ; preds = %dec_label_pc_10d0d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10d2c:                               ; preds = %dec_label_pc_10d0d
  %6 = call ptr @memset(ptr %2, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %stack_var_-32, align 8
  store ptr %10, ptr %.reg2mem, align 8
  br label %dec_label_pc_10d55

dec_label_pc_10d55:                               ; preds = %dec_label_pc_10d2c, %dec_label_pc_10cfc
  %11 = call i32 @staticReturnsTrue.165()
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_10dc8, label %dec_label_pc_10d63

dec_label_pc_10d63:                               ; preds = %dec_label_pc_10d55
  %.reload = load ptr, ptr %.reg2mem, align 8
  %13 = call i32 @strlen(ptr %.reload)
  %14 = add i32 %13, 1
  %15 = call ptr @calloc(i32 %14, i32 1)
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i1 %16, false
  br i1 %17, label %dec_label_pc_10d9d, label %dec_label_pc_10d93

dec_label_pc_10d93:                               ; preds = %dec_label_pc_10d63
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10d9d:                               ; preds = %dec_label_pc_10d63
  %18 = bitcast ptr %15 to ptr
  %19 = call ptr @strcpy(ptr %18, ptr %.reload)
  call void @printLine(ptr %18)
  call void @free(ptr %15)
  br label %dec_label_pc_10dc8

dec_label_pc_10dc8:                               ; preds = %dec_label_pc_10d9d, %dec_label_pc_10d55
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

