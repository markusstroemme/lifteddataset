@global_var_320 = external constant [20 x i8]
@global_var_4a3d4 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27d9a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_27dcd, label %dec_label_pc_27dbc

dec_label_pc_27dbc:                               ; preds = %dec_label_pc_27d9a
  call void @printLine(ptr @global_var_4a3d4)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_27e0b

dec_label_pc_27dcd:                               ; preds = %dec_label_pc_27d9a
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_27de5

dec_label_pc_27de5:                               ; preds = %dec_label_pc_27de5, %dec_label_pc_27dcd
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27e0b.loopexit, label %dec_label_pc_27de5

dec_label_pc_27e0b.loopexit:                      ; preds = %dec_label_pc_27de5
  %phitmp = inttoptr i64 %4 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_27e0b

dec_label_pc_27e0b:                               ; preds = %dec_label_pc_27e0b.loopexit, %dec_label_pc_27dbc
  %9 = call i32 @globalReturnsTrue()
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i1 %10, false
  %12 = zext i1 %11 to i64
  %13 = and i32 %9, -256
  %14 = sext i32 %13 to i64
  %15 = or i64 %12, %14
  %16 = icmp eq i1 %11, false
  store i64 %15, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_27e28, label %dec_label_pc_27e19

dec_label_pc_27e19:                               ; preds = %dec_label_pc_27e0b
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %17 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLine(i64 %17)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27e28

dec_label_pc_27e28:                               ; preds = %dec_label_pc_27e19, %dec_label_pc_27e0b
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3bd26:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

