@global_var_320 = external constant [20 x i8]
@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37eba:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge14.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %6 = add i64 %2, -816
  %7 = add i64 %2, -812
  store i64 0, ptr %storemerge14.reg2mem, align 8
  br label %dec_label_pc_37f22

dec_label_pc_37f22:                               ; preds = %dec_label_pc_37f22, %dec_label_pc_37eba
  %storemerge14.reload = load i64, ptr %storemerge14.reg2mem, align 8
  %8 = mul i64 %storemerge14.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge14.reload, 1
  %exitcond5 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge14.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_37f65, label %dec_label_pc_37f22

dec_label_pc_37f65:                               ; preds = %dec_label_pc_37f22, %dec_label_pc_37f65
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %14 = mul i64 %storemerge3.reload, 8
  %15 = add i64 %14, %5
  %16 = add i64 %14, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37fa2, label %dec_label_pc_37f65

dec_label_pc_37fa2:                               ; preds = %dec_label_pc_37f65
  %21 = inttoptr i64 %5 to ptr
  %22 = load i32, ptr %21, align 4
  call void @printIntLine(i32 %22)
  %23 = icmp eq i64 %5, 0
  br i1 %23, label %dec_label_pc_37fcb, label %dec_label_pc_37fbc

dec_label_pc_37fbc:                               ; preds = %dec_label_pc_37fa2
  %24 = inttoptr i64 %5 to ptr
  %25 = and i64 %1, 4294967295
  %26 = inttoptr i64 %25 to ptr
  call void @_ZdaPv(ptr %24, ptr %26)
  br label %dec_label_pc_37fcb

dec_label_pc_37fcb:                               ; preds = %dec_label_pc_37fbc, %dec_label_pc_37fa2
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %3, %27
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %28, label %dec_label_pc_37fe0, label %dec_label_pc_37fdb

dec_label_pc_37fdb:                               ; preds = %dec_label_pc_37fcb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37fe0

dec_label_pc_37fe0:                               ; preds = %dec_label_pc_37fdb, %dec_label_pc_37fcb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4336e:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

