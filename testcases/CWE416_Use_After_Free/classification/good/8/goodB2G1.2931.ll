@global_var_320 = external constant [20 x i8]
@global_var_49dea = external constant [21 x i8]

define i32 @staticReturnsTrue.291() local_unnamed_addr {
dec_label_pc_132c2:
  ret i32 1
}

define i32 @staticReturnsFalse.292() local_unnamed_addr {
dec_label_pc_132d1:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13393:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.291()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_13429, label %dec_label_pc_133b5

dec_label_pc_133b5:                               ; preds = %dec_label_pc_13393
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_133de, label %dec_label_pc_133ca

dec_label_pc_133ca:                               ; preds = %dec_label_pc_133b5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_133de:                               ; preds = %dec_label_pc_133b5, %dec_label_pc_133de
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
  br i1 %14, label %dec_label_pc_1341d, label %dec_label_pc_133de

dec_label_pc_1341d:                               ; preds = %dec_label_pc_133de
  call void @free(ptr %2)
  br label %dec_label_pc_13429

dec_label_pc_13429:                               ; preds = %dec_label_pc_1341d, %dec_label_pc_13393
  %15 = call i32 @staticReturnsFalse.292()
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %dec_label_pc_13446, label %dec_label_pc_13437

dec_label_pc_13437:                               ; preds = %dec_label_pc_13429
  call void @printLine(ptr @global_var_49dea)
  br label %dec_label_pc_13446

dec_label_pc_13446:                               ; preds = %dec_label_pc_13437, %dec_label_pc_13429
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

