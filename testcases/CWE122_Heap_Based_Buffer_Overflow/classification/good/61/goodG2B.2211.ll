define void @anon1() local_unnamed_addr {
dec_label_pc_15214:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1526b

dec_label_pc_1526b:                               ; preds = %dec_label_pc_15214, %dec_label_pc_1526b
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = add i64 %5, %3
  %7 = add i64 %5, %4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = inttoptr i64 %6 to ptr
  store i8 %9, ptr %10, align 1
  %11 = add i64 %5, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_15292, label %dec_label_pc_1526b

dec_label_pc_15292:                               ; preds = %dec_label_pc_1526b
  %14 = add i64 %3, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %1)
  %16 = bitcast ptr %1 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_152ca, label %dec_label_pc_152c5

dec_label_pc_152c5:                               ; preds = %dec_label_pc_15292
  call void @__stack_chk_fail()
  br label %dec_label_pc_152ca

dec_label_pc_152ca:                               ; preds = %dec_label_pc_152c5, %dec_label_pc_15292
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1531d:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1534c, label %dec_label_pc_15342

dec_label_pc_15342:                               ; preds = %dec_label_pc_1531d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1534c:                               ; preds = %dec_label_pc_1531d
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  ret ptr %3
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

