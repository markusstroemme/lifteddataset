@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_112aa:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_112e7, label %dec_label_pc_112d3

dec_label_pc_112d3:                               ; preds = %dec_label_pc_112aa
  call void @exit(i32 -1)
  unreachable

dec_label_pc_112e7:                               ; preds = %dec_label_pc_112aa, %dec_label_pc_112e7
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 8
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add i64 %4, 1
  %9 = inttoptr i64 %8 to ptr
  %10 = icmp ugt ptr %9, inttoptr (i64 99 to ptr)
  store ptr %9, ptr %storemerge1.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1130d, label %dec_label_pc_112e7

dec_label_pc_1130d:                               ; preds = %dec_label_pc_112e7
  %11 = load i64, ptr %0, align 8
  call void @printLongLine(i64 %11)
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

