@global_var_731b0 = external constant [4 x i8]
@global_var_731d0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a91ac = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_26c60:
  %0 = load i32, ptr @global_var_a91ac, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26cb9, label %dec_label_pc_26c7c

dec_label_pc_26c7c:                               ; preds = %dec_label_pc_26c60
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_26c8e, label %dec_label_pc_26caa

dec_label_pc_26c8e:                               ; preds = %dec_label_pc_26c7c
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_26cb9

dec_label_pc_26caa:                               ; preds = %dec_label_pc_26c7c
  call void @printLine(ptr @global_var_731d0)
  br label %dec_label_pc_26cb9

dec_label_pc_26cb9:                               ; preds = %dec_label_pc_26caa, %dec_label_pc_26c8e, %dec_label_pc_26c60
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_26cbc:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_731b0, ptr nonnull %stack_var_-18)
  store i32 1, ptr @global_var_a91ac, align 4
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_26d2a, label %dec_label_pc_26d25

dec_label_pc_26d25:                               ; preds = %dec_label_pc_26cbc
  call void @__stack_chk_fail()
  br label %dec_label_pc_26d2a

dec_label_pc_26d2a:                               ; preds = %dec_label_pc_26d25, %dec_label_pc_26cbc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

