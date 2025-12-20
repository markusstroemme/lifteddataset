@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_bc1a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i8 0, ptr %2, align 1
  %3 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_bc73, label %dec_label_pc_bc6e

dec_label_pc_bc6e:                                ; preds = %dec_label_pc_bc1a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_bc73

dec_label_pc_bc73:                                ; preds = %dec_label_pc_bc6e, %dec_label_pc_bc1a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_bd44:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %arg1 to i64
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_bd9b

dec_label_pc_bd9b:                                ; preds = %dec_label_pc_bd9b, %dec_label_pc_bd44
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = add i64 %storemerge2.reload, %2
  %5 = add i64 %storemerge2.reload, %3
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_bdc2, label %dec_label_pc_bd9b

dec_label_pc_bdc2:                                ; preds = %dec_label_pc_bd9b
  %10 = add i64 %2, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  %12 = bitcast ptr %arg1 to ptr
  call void @printLine(ptr %12)
  %13 = icmp eq ptr %arg1, null
  br i1 %13, label %dec_label_pc_bdec, label %dec_label_pc_bde0

dec_label_pc_bde0:                                ; preds = %dec_label_pc_bdc2
  %14 = bitcast ptr %arg1 to ptr
  call void @_ZdaPv(ptr %14, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_bdec

dec_label_pc_bdec:                                ; preds = %dec_label_pc_bde0, %dec_label_pc_bdc2
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_be01, label %dec_label_pc_bdfc

dec_label_pc_bdfc:                                ; preds = %dec_label_pc_bdec
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_be01

dec_label_pc_be01:                                ; preds = %dec_label_pc_bdfc, %dec_label_pc_bdec
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

