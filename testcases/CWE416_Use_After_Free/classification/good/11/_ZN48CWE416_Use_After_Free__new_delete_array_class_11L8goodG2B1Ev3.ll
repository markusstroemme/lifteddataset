@global_var_320 = external constant [20 x i8]
@global_var_4a1ac = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1e40e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1e441, label %dec_label_pc_1e430

dec_label_pc_1e430:                               ; preds = %dec_label_pc_1e40e
  call void @printLine(ptr @global_var_4a1ac)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1e498

dec_label_pc_1e441:                               ; preds = %dec_label_pc_1e40e
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1e459

dec_label_pc_1e459:                               ; preds = %dec_label_pc_1e459, %dec_label_pc_1e441
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e498.loopexit, label %dec_label_pc_1e459

dec_label_pc_1e498.loopexit:                      ; preds = %dec_label_pc_1e459
  %11 = inttoptr i64 %4 to ptr
  store ptr %11, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1e498

dec_label_pc_1e498:                               ; preds = %dec_label_pc_1e498.loopexit, %dec_label_pc_1e430
  %12 = call i32 @globalReturnsTrue()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i1 %13, false
  %15 = zext i1 %14 to i64
  %16 = and i32 %12, -256
  %17 = sext i32 %16 to i64
  %18 = or i64 %15, %17
  %19 = icmp eq i1 %14, false
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_1e4b3, label %dec_label_pc_1e4a6

dec_label_pc_1e4a6:                               ; preds = %dec_label_pc_1e498
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %20 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %20)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e4b3

dec_label_pc_1e4b3:                               ; preds = %dec_label_pc_1e4a6, %dec_label_pc_1e498
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
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

