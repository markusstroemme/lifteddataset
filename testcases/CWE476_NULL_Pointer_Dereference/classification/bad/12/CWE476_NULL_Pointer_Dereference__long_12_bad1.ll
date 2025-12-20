@global_var_485fc = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_13d42:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = ptrtoint ptr %data_-32 to i64
  %storemerge = select i1 %2, i64 %3, i64 0
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_13da4, label %dec_label_pc_13d93

dec_label_pc_13d93:                               ; preds = %dec_label_pc_13d42
  %6 = inttoptr i64 %storemerge to ptr
  %7 = load i64, ptr %6, align 8
  call void @printLongLine(i64 %7)
  br label %dec_label_pc_13dcb

dec_label_pc_13da4:                               ; preds = %dec_label_pc_13d42
  %8 = icmp eq i64 %storemerge, 0
  br i1 %8, label %dec_label_pc_13dbc, label %dec_label_pc_13dab

dec_label_pc_13dab:                               ; preds = %dec_label_pc_13da4
  %9 = inttoptr i64 %storemerge to ptr
  %10 = load i64, ptr %9, align 8
  call void @printLongLine(i64 %10)
  br label %dec_label_pc_13dcb

dec_label_pc_13dbc:                               ; preds = %dec_label_pc_13da4
  call void @printLine(ptr @global_var_485fc)
  br label %dec_label_pc_13dcb

dec_label_pc_13dcb:                               ; preds = %dec_label_pc_13dbc, %dec_label_pc_13dab, %dec_label_pc_13d93
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_13de0, label %dec_label_pc_13ddb

dec_label_pc_13ddb:                               ; preds = %dec_label_pc_13dcb
  call void @__stack_chk_fail()
  br label %dec_label_pc_13de0

dec_label_pc_13de0:                               ; preds = %dec_label_pc_13ddb, %dec_label_pc_13dcb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

