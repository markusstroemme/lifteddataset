@global_var_320 = external constant [20 x i8]
@global_var_49e14 = external constant [21 x i8]
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_13a99:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_13b2b, label %dec_label_pc_13ab7

dec_label_pc_13ab7:                               ; preds = %dec_label_pc_13a99
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_13ae0, label %dec_label_pc_13acc

dec_label_pc_13acc:                               ; preds = %dec_label_pc_13ab7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13ae0:                               ; preds = %dec_label_pc_13ab7, %dec_label_pc_13ae0
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add i64 %6, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 99 to ptr)
  store ptr %13, ptr %storemerge1.reg2mem, align 8
  br i1 %14, label %dec_label_pc_13b1f, label %dec_label_pc_13ae0

dec_label_pc_13b1f:                               ; preds = %dec_label_pc_13ae0
  call void @free(ptr %2)
  br label %dec_label_pc_13b2b

dec_label_pc_13b2b:                               ; preds = %dec_label_pc_13b1f, %dec_label_pc_13a99
  %15 = load i32, ptr @global_var_63100, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %dec_label_pc_13b44, label %dec_label_pc_13b35

dec_label_pc_13b35:                               ; preds = %dec_label_pc_13b2b
  call void @printLine(ptr @global_var_49e14)
  br label %dec_label_pc_13b44

dec_label_pc_13b44:                               ; preds = %dec_label_pc_13b35, %dec_label_pc_13b2b
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

