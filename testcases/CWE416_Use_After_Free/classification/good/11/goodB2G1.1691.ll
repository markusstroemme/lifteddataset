@global_var_49c69 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d14a:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d1c6, label %dec_label_pc_d16c

dec_label_pc_d16c:                                ; preds = %dec_label_pc_d14a
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_d195, label %dec_label_pc_d181

dec_label_pc_d181:                                ; preds = %dec_label_pc_d16c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d195:                                ; preds = %dec_label_pc_d16c, %dec_label_pc_d195
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 4
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add i64 %6, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_d1ba, label %dec_label_pc_d195

dec_label_pc_d1ba:                                ; preds = %dec_label_pc_d195
  call void @free(ptr %2)
  br label %dec_label_pc_d1c6

dec_label_pc_d1c6:                                ; preds = %dec_label_pc_d1ba, %dec_label_pc_d14a
  %13 = call i32 @globalReturnsFalse()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_d1e3, label %dec_label_pc_d1d4

dec_label_pc_d1d4:                                ; preds = %dec_label_pc_d1c6
  call void @printLine(ptr @global_var_49c69)
  br label %dec_label_pc_d1e3

dec_label_pc_d1e3:                                ; preds = %dec_label_pc_d1d4, %dec_label_pc_d1c6
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

