@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1fe54:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-32 = alloca ptr, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %stack_var_-32, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  store ptr %4, ptr %.reg2mem, align 8
  br label %dec_label_pc_1fe8f

dec_label_pc_1fe8f:                               ; preds = %dec_label_pc_1fe8f, %dec_label_pc_1fe54
  %.reload = load ptr, ptr %.reg2mem, align 8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %.reload to i64
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-32, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = or i64 %6, 4
  %12 = add i64 %11, %10
  %13 = inttoptr i64 %12 to ptr
  store i32 2, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge2.reload, 1
  %.pr = load ptr, ptr %stack_var_-32, align 8
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  store ptr %.pr, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1fec6, label %dec_label_pc_1fe8f

dec_label_pc_1fec6:                               ; preds = %dec_label_pc_1fe8f
  %15 = icmp eq ptr %.pr, null
  br i1 %15, label %dec_label_pc_1fedb, label %dec_label_pc_1fecf

dec_label_pc_1fecf:                               ; preds = %dec_label_pc_1fec6
  %16 = bitcast ptr %.pr to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_1fedb

dec_label_pc_1fedb:                               ; preds = %dec_label_pc_1fecf, %dec_label_pc_1fec6
  %19 = bitcast ptr %stack_var_-32 to ptr
  %20 = call i64 @anon1(ptr nonnull %19)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_1fefc, label %dec_label_pc_1fef7

dec_label_pc_1fef7:                               ; preds = %dec_label_pc_1fedb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1fefc

dec_label_pc_1fefc:                               ; preds = %dec_label_pc_1fef7, %dec_label_pc_1fedb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_20052:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

