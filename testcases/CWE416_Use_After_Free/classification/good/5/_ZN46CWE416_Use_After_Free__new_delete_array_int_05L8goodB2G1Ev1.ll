@global_var_4a2ac = external constant [21 x i8]
@0 = external global i32
@global_var_63058 = external local_unnamed_addr global i32
@global_var_630d8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23b3f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63058, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_23bad, label %dec_label_pc_23b5d

dec_label_pc_23b5d:                               ; preds = %dec_label_pc_23b3f
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_23b75

dec_label_pc_23b75:                               ; preds = %dec_label_pc_23b75, %dec_label_pc_23b5d
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_23b9a, label %dec_label_pc_23b75

dec_label_pc_23b9a:                               ; preds = %dec_label_pc_23b75
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %dec_label_pc_23bad, label %dec_label_pc_23ba1

dec_label_pc_23ba1:                               ; preds = %dec_label_pc_23b9a
  %10 = inttoptr i64 %4 to ptr
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_23bad

dec_label_pc_23bad:                               ; preds = %dec_label_pc_23ba1, %dec_label_pc_23b9a, %dec_label_pc_23b3f
  %13 = load i32, ptr @global_var_630d8, align 4
  %14 = icmp eq i32 %13, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_23bc6, label %dec_label_pc_23bb7

dec_label_pc_23bb7:                               ; preds = %dec_label_pc_23bad
  call void @printLine(ptr @global_var_4a2ac)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23bc6

dec_label_pc_23bc6:                               ; preds = %dec_label_pc_23bb7, %dec_label_pc_23bad
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

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

