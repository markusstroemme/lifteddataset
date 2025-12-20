@global_var_320 = external constant [20 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22f94:
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
  br label %dec_label_pc_22fcf

dec_label_pc_22fcf:                               ; preds = %dec_label_pc_22fcf, %dec_label_pc_22f94
  %.reload = load ptr, ptr %.reg2mem, align 8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %.reload to i64
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %.pr = load ptr, ptr %stack_var_-32, align 8
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  store ptr %.pr, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_22ff1, label %dec_label_pc_22fcf

dec_label_pc_22ff1:                               ; preds = %dec_label_pc_22fcf
  %10 = icmp eq ptr %.pr, null
  br i1 %10, label %dec_label_pc_23006, label %dec_label_pc_22ffa

dec_label_pc_22ffa:                               ; preds = %dec_label_pc_22ff1
  %11 = bitcast ptr %.pr to ptr
  %12 = and i64 %1, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_23006

dec_label_pc_23006:                               ; preds = %dec_label_pc_22ffa, %dec_label_pc_22ff1
  %14 = call i64 @anon1(ptr nonnull %stack_var_-32)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %2, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_23027, label %dec_label_pc_23022

dec_label_pc_23022:                               ; preds = %dec_label_pc_23006
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23027

dec_label_pc_23027:                               ; preds = %dec_label_pc_23022, %dec_label_pc_23006
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_23098:
  %0 = ptrtoint ptr %arg1 to i64
  ret i64 %0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

