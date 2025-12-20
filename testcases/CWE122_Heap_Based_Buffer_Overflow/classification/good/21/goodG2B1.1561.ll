@global_var_79bb0 = external constant [21 x i8]
@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32
@global_var_a20b8 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_10738:
  %stack_var_-16.0.in.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_a20b8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_10763, label %dec_label_pc_10752

dec_label_pc_10752:                               ; preds = %dec_label_pc_10738
  call void @printLine(ptr @global_var_79bb0)
  store ptr %data, ptr %stack_var_-16.0.in.reg2mem, align 8
  br label %dec_label_pc_10782

dec_label_pc_10763:                               ; preds = %dec_label_pc_10738
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  store ptr %2, ptr %stack_var_-16.0.in.reg2mem, align 8
  br i1 %4, label %dec_label_pc_10782, label %dec_label_pc_10778

dec_label_pc_10778:                               ; preds = %dec_label_pc_10763
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10782:                               ; preds = %dec_label_pc_10763, %dec_label_pc_10752
  %stack_var_-16.0.in.reload = load ptr, ptr %stack_var_-16.0.in.reg2mem, align 8
  ret ptr %stack_var_-16.0.in.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_10788:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_a20b8, align 4
  %2 = call ptr @anon0(ptr null)
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_107f5

dec_label_pc_107f5:                               ; preds = %dec_label_pc_10788, %dec_label_pc_107f5
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_10832, label %dec_label_pc_107f5

dec_label_pc_10832:                               ; preds = %dec_label_pc_107f5
  %16 = load i64, ptr %2, align 8
  call void @printLongLongLine(i64 %16)
  call void @free(ptr %2)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_10868, label %dec_label_pc_10863

dec_label_pc_10863:                               ; preds = %dec_label_pc_10832
  call void @__stack_chk_fail()
  br label %dec_label_pc_10868

dec_label_pc_10868:                               ; preds = %dec_label_pc_10863, %dec_label_pc_10832
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

