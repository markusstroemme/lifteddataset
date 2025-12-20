@global_var_320 = external constant [20 x i8]
@global_var_4a44d = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.408() local_unnamed_addr {
dec_label_pc_2a8d6:
  ret i32 1
}

define i32 @staticReturnsFalse.409() local_unnamed_addr {
dec_label_pc_2a8e5:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a99d:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.408()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_2aa29, label %dec_label_pc_2a9bf

dec_label_pc_2a9bf:                               ; preds = %dec_label_pc_2a99d
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2a9d7

dec_label_pc_2a9d7:                               ; preds = %dec_label_pc_2a9d7, %dec_label_pc_2a9bf
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2aa16, label %dec_label_pc_2a9d7

dec_label_pc_2aa16:                               ; preds = %dec_label_pc_2a9d7
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %dec_label_pc_2aa29, label %dec_label_pc_2aa1d

dec_label_pc_2aa1d:                               ; preds = %dec_label_pc_2aa16
  %14 = inttoptr i64 %6 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_2aa29

dec_label_pc_2aa29:                               ; preds = %dec_label_pc_2aa1d, %dec_label_pc_2aa16, %dec_label_pc_2a99d
  %17 = call i32 @staticReturnsFalse.409()
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i1 %18, false
  %20 = zext i1 %19 to i64
  %21 = and i32 %17, -256
  %22 = sext i32 %21 to i64
  %23 = or i64 %20, %22
  %24 = icmp eq i1 %19, false
  store i64 %23, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_2aa46, label %dec_label_pc_2aa37

dec_label_pc_2aa37:                               ; preds = %dec_label_pc_2aa29
  call void @printLine(ptr @global_var_4a44d)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2aa46

dec_label_pc_2aa46:                               ; preds = %dec_label_pc_2aa37, %dec_label_pc_2aa29
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

