@global_var_320 = external constant [20 x i8]
@global_var_49e53 = external constant [21 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14896:
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_14929, label %dec_label_pc_148b5

dec_label_pc_148b5:                               ; preds = %dec_label_pc_14896
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_148de, label %dec_label_pc_148ca

dec_label_pc_148ca:                               ; preds = %dec_label_pc_148b5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_148de:                               ; preds = %dec_label_pc_148b5, %dec_label_pc_148de
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %4
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  %11 = add i64 %9, 4
  %12 = inttoptr i64 %11 to ptr
  store i32 2, ptr %12, align 4
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_1491d, label %dec_label_pc_148de

dec_label_pc_1491d:                               ; preds = %dec_label_pc_148de
  call void @free(ptr %3)
  %.pr = load i32, ptr @global_var_630ac, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_14929

dec_label_pc_14929:                               ; preds = %dec_label_pc_1491d, %dec_label_pc_14896
  %.reload = load i32, ptr %.reg2mem, align 4
  %16 = icmp eq i32 %.reload, 5
  br i1 %16, label %dec_label_pc_14943, label %dec_label_pc_14934

dec_label_pc_14934:                               ; preds = %dec_label_pc_14929
  call void @printLine(ptr @global_var_49e53)
  br label %dec_label_pc_14943

dec_label_pc_14943:                               ; preds = %dec_label_pc_14934, %dec_label_pc_14929
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

