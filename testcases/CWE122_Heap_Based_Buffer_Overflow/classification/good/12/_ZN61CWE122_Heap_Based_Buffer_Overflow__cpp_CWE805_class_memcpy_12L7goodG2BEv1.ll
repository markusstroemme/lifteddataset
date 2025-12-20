@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9319:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9381

dec_label_pc_9381:                                ; preds = %dec_label_pc_9381, %dec_label_pc_9319
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 8
  %5 = add i64 %4, %0
  %6 = add i64 %5, -816
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %5, -812
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_93b7, label %dec_label_pc_9381

dec_label_pc_93b7:                                ; preds = %dec_label_pc_9381
  %11 = inttoptr i64 %3 to ptr
  %12 = call ptr @memcpy(ptr %11, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %13 = inttoptr i64 %3 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %15 = icmp eq i64 %3, 0
  br i1 %15, label %dec_label_pc_93fe, label %dec_label_pc_93ef

dec_label_pc_93ef:                                ; preds = %dec_label_pc_93b7
  %16 = ptrtoint ptr %stack_var_-824 to i64
  %17 = and i64 %16, 4294967288
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %11, ptr %18)
  br label %dec_label_pc_93fe

dec_label_pc_93fe:                                ; preds = %dec_label_pc_93ef, %dec_label_pc_93b7
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_9413, label %dec_label_pc_940e

dec_label_pc_940e:                                ; preds = %dec_label_pc_93fe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9413

dec_label_pc_9413:                                ; preds = %dec_label_pc_940e, %dec_label_pc_93fe
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

