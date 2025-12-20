@global_var_49c15 = external constant [21 x i8]
@global_var_63024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c52b:
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63024, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_c5a4, label %dec_label_pc_c54a

dec_label_pc_c54a:                                ; preds = %dec_label_pc_c52b
  %3 = call ptr @malloc(i32 400)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_c573, label %dec_label_pc_c55f

dec_label_pc_c55f:                                ; preds = %dec_label_pc_c54a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c573:                                ; preds = %dec_label_pc_c54a, %dec_label_pc_c573
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %8, %4
  %10 = inttoptr i64 %9 to ptr
  store i32 5, ptr %10, align 4
  %11 = add i64 %7, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_c598, label %dec_label_pc_c573

dec_label_pc_c598:                                ; preds = %dec_label_pc_c573
  call void @free(ptr %3)
  %.pr = load i32, ptr @global_var_63024, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_c5a4

dec_label_pc_c5a4:                                ; preds = %dec_label_pc_c598, %dec_label_pc_c52b
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_c5be, label %dec_label_pc_c5af

dec_label_pc_c5af:                                ; preds = %dec_label_pc_c5a4
  call void @printLine(ptr @global_var_49c15)
  br label %dec_label_pc_c5be

dec_label_pc_c5be:                                ; preds = %dec_label_pc_c5af, %dec_label_pc_c5a4
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

