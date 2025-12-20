@global_var_320 = external constant [20 x i8]
@global_var_4a225 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.402() local_unnamed_addr {
dec_label_pc_21043:
  ret i32 1
}

define i32 @staticReturnsFalse.403() local_unnamed_addr {
dec_label_pc_21052:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21204:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsFalse.403()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_21237, label %dec_label_pc_21226

dec_label_pc_21226:                               ; preds = %dec_label_pc_21204
  call void @printLine(ptr @global_var_4a225)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_21275

dec_label_pc_21237:                               ; preds = %dec_label_pc_21204
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2124f

dec_label_pc_2124f:                               ; preds = %dec_label_pc_2124f, %dec_label_pc_21237
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_21275.loopexit, label %dec_label_pc_2124f

dec_label_pc_21275.loopexit:                      ; preds = %dec_label_pc_2124f
  %phitmp = inttoptr i64 %4 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_21275

dec_label_pc_21275:                               ; preds = %dec_label_pc_21275.loopexit, %dec_label_pc_21226
  %9 = call i32 @staticReturnsTrue.402()
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i1 %10, false
  %12 = zext i1 %11 to i64
  %13 = and i32 %9, -256
  %14 = sext i32 %13 to i64
  %15 = or i64 %12, %14
  %16 = icmp eq i1 %11, false
  store i64 %15, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_21292, label %dec_label_pc_21283

dec_label_pc_21283:                               ; preds = %dec_label_pc_21275
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %17 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLongLine(i64 %17)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21292

dec_label_pc_21292:                               ; preds = %dec_label_pc_21283, %dec_label_pc_21275
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

