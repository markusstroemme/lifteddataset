@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_dc9e:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_dcdb, label %dec_label_pc_dcc7

dec_label_pc_dcc7:                                ; preds = %dec_label_pc_dc9e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_dcdb:                                ; preds = %dec_label_pc_dc9e, %dec_label_pc_dcdb
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add i64 %4, 1
  %9 = inttoptr i64 %8 to ptr
  %10 = icmp ugt ptr %9, inttoptr (i64 99 to ptr)
  store ptr %9, ptr %storemerge1.reg2mem, align 8
  br i1 %10, label %dec_label_pc_dd00, label %dec_label_pc_dcdb

dec_label_pc_dd00:                                ; preds = %dec_label_pc_dcdb
  call void @free(ptr %0)
  %11 = bitcast ptr %0 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

